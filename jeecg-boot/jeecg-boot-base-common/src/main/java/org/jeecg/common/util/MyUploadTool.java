package org.jeecg.common.util;

import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.DigestUtils;

import lombok.extern.slf4j.Slf4j;

public class MyUploadTool {
  public static List<String> AllowImgTypes = null;

  public static List<String> AllowVisTypes = null;
  public static List<String> AllowVioTypes = null;
  public static List<String> AllowDocTypes = null;

  public static List<String> AllowFileTypes = null;

  public static Map<String, String> ImgTypes = null;

  public static String AllowFileTypesStr = null;

  public static String WJFLM_TP = "图片";// 图片，音频，视频，文档，电子表格，其他文件
  public static String WJFLM_YP = "音频";
  public static String WJFLM_SP = "视频";
  public static String WJFLM_WD = "文档";
  public static String WJFLM_DZBG = "电子表格";
  public static String WJFLM_QTWJ = "其他文件";

  public static final String DEFAULTPICTUREPATH = "upload/images/newsnewspicture/Lighthouse.png";

  static String[] voiFTs = new String[] { ".mp3", ".wma", ".rm", ".wav", ".midi", ".ape", ".flac" };
  static String[] visFTs = new String[] { ".avi", ".wmv", ".mpg", ".mpe", ".mp4", ".mpeg1", ".mpeg2", ".mpeg4", ".ra",
      ".rm", ".rmvb", ".mov", ".asf", ".divx", ".mkv", ".vob" };
  static String[] docFTs = new String[] { ".doc", ".docx", ".xls", ".xlsx", ".pdf", ".pptx", ".txt", ".log", ".xml" };

  public static int MIN_IMG_WIDTH = 90;
  public static int MIN_IMG_HEIGHT = 90;

  public static int COMM_IMG_WIDTH = 1080;
  public static int COMM_IMG_HEIGHT = 1920;

  // @Value(value = "${jeecg.path.upload}")
  // private static String uploadpath;

  static {
    if (AllowImgTypes == null) {
      AllowImgTypes = new ArrayList<String>();
      AllowImgTypes.add(".jpg");
      AllowImgTypes.add(".jpeg");
      AllowImgTypes.add(".png");
      AllowImgTypes.add(".gif");
      AllowImgTypes.add(".bmp");
    }

    if (ImgTypes == null) {
      ImgTypes = new HashMap<String, String>();
      ImgTypes.put(".jpg", "JPEG");
      ImgTypes.put(".jpeg", "JPEG");
      ImgTypes.put(".png", "PNG");
      ImgTypes.put(".gif", "GIF");
      ImgTypes.put(".bmp", "BMP");
    }

    if (AllowFileTypes == null) {
      AllowFileTypes = new ArrayList<String>();
      AllowVioTypes = new ArrayList<String>();
      AllowVisTypes = new ArrayList<String>();
      AllowDocTypes = new ArrayList<String>();

      AllowFileTypes.addAll(AllowImgTypes);
      Collections.addAll(AllowFileTypes, voiFTs);
      Collections.addAll(AllowFileTypes, visFTs);
      Collections.addAll(AllowFileTypes, docFTs);

      Collections.addAll(AllowVioTypes, voiFTs);
      Collections.addAll(AllowVisTypes, visFTs);
      Collections.addAll(AllowDocTypes, docFTs);
    }
    if (AllowFileTypesStr == null) {
      StringBuilder sb = new StringBuilder();
      for (String str : AllowFileTypes) {
        if (sb.length() > 0) {
          sb.append(",");
        }
        sb.append(str);
      }
      AllowFileTypesStr = sb.toString();

    }
  }

  public static String findImgTypeName(String filename) {
    String postfix = "";
    int lastPointIndex = filename.lastIndexOf(".");
    if (lastPointIndex > -1) {
      postfix = filename.substring(lastPointIndex);
    }
    if (!"".equals(postfix)) {

    }
    if (ImgTypes.containsKey(postfix)) {
      return ImgTypes.get(postfix);
    }
    return "";
  }

  public static String findFileLastName(String filename) {
    String fileLastName = filename;
    int lastFPIndex = filename.lastIndexOf("/");
    int lastFPI = lastFPIndex;
    int lastFP2Index = filename.lastIndexOf("\\");
    int lastPointIndex = filename.lastIndexOf(".");
    if (lastFP2Index > lastFPIndex) {
      lastFPI = lastFP2Index;
    }
    fileLastName = filename.substring(lastFPI + 1, lastPointIndex);
    return fileLastName;
  }

  public static String findFileLastCluExName(String filename) {
    String fileLastName = filename;
    int lastFPIndex = filename.lastIndexOf("/");
    int lastFPI = lastFPIndex;
    int lastFP2Index = filename.lastIndexOf("\\");
    if (lastFP2Index > lastFPIndex) {
      lastFPI = lastFP2Index;
    }
    fileLastName = filename.substring(lastFPI + 1, filename.length());
    return fileLastName;
  }

  public static String findFileExtName(String filename) {
    String postfix = "";
    int lastPointIndex = filename.lastIndexOf(".");
    if (lastPointIndex > -1) {
      postfix = filename.substring(lastPointIndex);
    }
    return postfix;
  }

  public static boolean isAllowedImgType(String filename) {
    boolean isallow = false;
    String postfix = findFileExtName(filename);
    postfix = postfix.toLowerCase();
    if (AllowImgTypes.contains(postfix)) {
      isallow = true;
    }
    return isallow;
  }

  public static boolean isAllowedFileType(String filename) {
    boolean isallow = false;
    String postfix = findFileExtName(filename);
    postfix = postfix.toLowerCase();
    if (AllowFileTypes.contains(postfix)) {
      isallow = true;
    }
    return isallow;
  }

  public static BufferedImage resize(BufferedImage source, int targetW, int targetH) {
    // targetW，targetH分别表示目标长和宽
    int type = source.getType();
    BufferedImage target = null;
    double sx = (double) targetW / source.getWidth();
    double sy = (double) targetH / source.getHeight();
    // 这里想实现在targetW，targetH范围内实现等比缩放。如果不需要等比缩放
    // 则将下面的if else语句注释即可
    if (sx > sy) {
      sx = sy;
      targetW = (int) (sx * source.getWidth());
    } else {
      sy = sx;
      targetH = (int) (sy * source.getHeight());
    }
    if (type == BufferedImage.TYPE_CUSTOM) { // handmade
      ColorModel cm = source.getColorModel();
      WritableRaster raster = cm.createCompatibleWritableRaster(targetW, targetH);
      boolean alphaPremultiplied = cm.isAlphaPremultiplied();
      target = new BufferedImage(cm, raster, alphaPremultiplied, null);
    } else
      target = new BufferedImage(targetW, targetH, type);
    Graphics2D g = target.createGraphics();
    // smoother than exlax:
    g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
    g.drawRenderedImage(source, AffineTransform.getScaleInstance(sx, sy));
    g.dispose();
    return target;
  }

  public static void saveMiniImage(String fromFileStr, String saveToFileStr, int width, int hight, String imgType)
      throws Exception {
    BufferedImage srcImage;
    File saveFile = new File(saveToFileStr);
    File fromFile = new File(fromFileStr);
    srcImage = ImageIO.read(fromFile);
    if (width > 0 || hight > 0) {
      srcImage = resize(srcImage, width, hight);
    }
    ImageIO.write(srcImage, imgType, saveFile);

  }

  public static void saveMiniImage(String fromFileStr, int width, int hight, String imgType) throws Exception {
    saveMiniImage(fromFileStr, toMiniPath(fromFileStr), width, hight, imgType);
  }

  public static String toMiniPath(String path) {
    return path.substring(0, path.lastIndexOf(".")) + "mini" + path.substring(path.lastIndexOf("."));
  };

  public static File toFile(String path) {
    return new File(path);
  }

  public static String toRealPath(String path) {
    return path;
    // return uploadpath + path;
  }

  public static void saveImageRealPath(File fromFile, String destPath, String imgType, boolean onlyMini)
      throws Exception {
    String realDestPath = destPath;
    System.out.println("fromFile:" + fromFile.getName());
    System.out.println("destPath:" + realDestPath);
    try {
      if (!onlyMini) {
        saveMiniImage(fromFile.toString(), realDestPath, COMM_IMG_WIDTH, COMM_IMG_HEIGHT, imgType);
      }
      saveMiniImage(realDestPath, MIN_IMG_WIDTH, MIN_IMG_HEIGHT, imgType);
    } catch (Exception e) {
      deleteImage(destPath);
      throw (e);
    } finally {
    }
  }

  public static void saveImage(File fromFile, String destPath, String imgType, boolean onlyMini) throws Exception {
    String realDestPath = toRealPath(destPath);
    System.out.println("fromFile:" + realDestPath);
    System.out.println("destPath:" + destPath);
    try {
      if (!onlyMini) {
        saveMiniImage(fromFile.toString(), realDestPath, COMM_IMG_WIDTH, COMM_IMG_HEIGHT, imgType);
      }
      saveMiniImage(realDestPath, MIN_IMG_WIDTH, MIN_IMG_HEIGHT, imgType);
    } catch (Exception e) {
      deleteImage(destPath);
      throw (e);
    } finally {
    }
  }

  public static void saveImage(File fromFile, String destPath, String imgType) throws Exception {
    saveImage(fromFile, destPath, imgType, false);
  }

  public static void deleteImage(String path) throws Exception {
    try {
      File destFile = toFile(toRealPath(path));
      if (destFile.exists()) {
        destFile.delete();
      }
      destFile = toFile(toMiniPath(toRealPath(path)));
      if (destFile.exists()) {
        destFile.delete();
      }
    } catch (Exception e) {
      throw (e);
    }
  }

  public static FileInputStream getInputStreamByPath(String path) throws FileNotFoundException {
    return new FileInputStream(toRealPath(path));
  }

  public static String calFileMd5Str(String filename) {
    String str2 = "NULL";
    try {
      str2 = DigestUtils.md5DigestAsHex(new FileInputStream(filename));
    } catch (FileNotFoundException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
    return str2;
  }

  public static String findFileFL(String filename) {
    String str = WJFLM_QTWJ;
    String fenstr = findFileExtName(filename);
    if (AllowVioTypes.contains(fenstr)) {
      str = WJFLM_YP;
    } else if (AllowVisTypes.contains(fenstr)) {
      str = WJFLM_SP;
    } else if (AllowDocTypes.contains(fenstr)) {
      str = WJFLM_WD;
    } else if (AllowImgTypes.contains(fenstr)) {
      str = WJFLM_TP;
    }
    return str;
  }

  public static void saveBytes(byte[] dcbs, String filepath, String imgType, boolean saveMin) throws Exception {
    FileOutputStream fos = new FileOutputStream(new File(filepath));
    fos.write(dcbs);
    fos.close();
    if (saveMin) {
      saveMiniImage(filepath, MIN_IMG_WIDTH, MIN_IMG_HEIGHT, imgType);
    }
  }

  public static void saveBase64Strs(String base64Str, String filePath, String imgType, boolean saveMin)
      throws Exception {
    byte[] dcbs = Base64.getDecoder().decode(base64Str);
    saveBytes(dcbs, filePath, imgType, saveMin);
  }
}