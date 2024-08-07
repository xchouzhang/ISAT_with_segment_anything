��          �               l  �   m  2     Q   9  �   �       5   -  �   c  H   "  n   k  $   �  I   �     I  ~   V  X   �  `   .     �     �  B   �  @   �  $   *  W  O  �   �  &   D	  4   k	     �	  "   �	  "   �	  &   
  5   ,
  .   b
      �
  F   �
     �
  H     R   Q  a   �       
     :     0   S      �   **ISAT-SAM** stands for Interactive Semi-Automatic Annotation Tool with `Segment Anything Model <https://github.com/facebookresearch/segment-anything>`_ **area**: The area covered by the object in pixels **bbox**: The bounding box coordinates in the format [x_min, y_min, x_max, y_max] **category**: The class label of the object. If the category_id from MSCOCO does not have a corresponding entry, 'unknown' is used **description**: Always 'ISAT' **folder**: The directory where the images are stored **group**: An identifier that groups objects based on overlapping bounding boxes. If an object's bounding box is within another, they share the same group number. Group numbering starts at 1 **iscrowd**: A boolean value indicating if the object is part of a crowd **layer**: A float indicating the sequence of the object. It increments within the same group, starting at 1.0 **name**: The name of the image file **note**: An optional field for any additional notes related to the image **objects**: **segmentation**: A list of [x, y] coordinates forming the polygon around the object, e.g. [[x1, y1], [x2, y2], ..., [xn, yn]] **width**, **height**, **depth**: The dimensions of the image; depth is 3 for RGB images Check :doc:`features` for full features demonstration. Or click :doc:`usage` to **get started!** Contents Software demo The annotations are stored in ISAT json format, similar to MSCOCO: This project is under active development. Feedbacks are Welcome! Welcome to ISAT-SAM's documentation! Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-06-06 11:00+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: cn
Language-Team: cn <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.15.0
 **ISAT-SAM** 是一款基于 `Segment Anything Model <https://github.com/facebookresearch/segment-anything>`_ 的交互式半自动图像分割标注工具  **area**：对象覆盖的像素区域 **bbox**: 边框格式 [x_min, y_min, x_max, y_max]  **category**: 标注的种类  **description**：始终为 'ISAT' **folder**：存储图像的目录 **group**: 分组， 从1开始计算  **iscrowd**：布尔值，指示对象是否为群体 **layer**: 图层， 从1.0开始，每层 + 1 **name**：图像文件的名称 **note**：注释, 与图像相关的任何附加说明的可选字段 **objects**： **segmentation**: 分割的坐标点 [[x1, y1], [x2, y2], ..., [xn, yn]] **width**, **height**, **depth**: 图片的尺寸和深度; RGB图为3通道深度 点击 :doc:`features` 来查看功能演示。或者点击 :doc:`usage` 来查看使用方法！ 内容 软件demo 标注文件储存在类似MSCOCO格式的json文件里： 该项目正在积极开发中。欢迎反馈！ 欢迎查阅ISAT-SAM的文档！ 