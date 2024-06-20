'''
Author: zhangxp fox_xchouzhang@163.com
Date: 2024-06-20 12:44:51
LastEditors: zhangxp fox_xchouzhang@163.com
LastEditTime: 2024-06-20 12:54:42
FilePath: \ISAT_with_segment_anything\copy_images.py
Description: 

Copyright (c) 2024 by zhangxp, All Rights Reserved. 
'''
import os
import random
import shutil

def read_file(file_path):
    try:
        with open(file_path, 'r') as file:
            lines = file.readlines()
        return lines
    except Exception as e:
        print(f"Error reading file {file_path}: {e}")
        return []

def select_random_lines(lines, num_lines=80):
    return random.sample(lines, min(num_lines, len(lines)))

def extract_image_names(lines):
    image_names = []
    for line in lines:
        image_path = line.split(',')[0]
        image_name = os.path.basename(image_path)
        image_names.append(image_name)
    return image_names

def copy_images(image_names, source_dir, target_dir):
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)
    for image_name in image_names:
        src_path = os.path.join(source_dir, image_name)
        dst_path = os.path.join(target_dir, image_name)
        if os.path.exists(dst_path):
            print(f"Image already exists, skipped: {dst_path}")
        else:
            if os.path.exists(src_path):
                try:
                    shutil.copy(src_path, dst_path)
                    print(f"Copied: {src_path} to {dst_path}")
                except Exception as e:
                    print(f"Error copying {src_path} to {dst_path}: {e}")
            else:
                print(f"Image not found and skipped: {src_path}")

def main():
    file_path = r"D:\experiments\Dr_code\weakly supervised\wsss_PGs_zxp\data\level_16\val_list_0.2_PG_pos.txt"      # 替换为你的文本文件路径
    source_dir = r"D:\software\BaiduSyncdisk\wsss_datas\16_level\adjust_PGs"                                        # 替换为你的源文件夹路径
    target_dir = r"D:\software\BaiduSyncdisk\wsss_datas\16_level\seg_image_and_Labels\images"                       # 替换为你的目标文件夹路径
    num_lines = 80  # 随机选择的行数

    lines = read_file(file_path)
    if lines:
        selected_lines = select_random_lines(lines, num_lines)
        image_names = extract_image_names(selected_lines)
        copy_images(image_names, source_dir, target_dir)
        print("Image copy completed.")
    else:
        print("No lines read from the file.")

if __name__ == "__main__":
    main()