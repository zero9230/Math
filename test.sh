#!/bin/bash
read_dir(){
    for file in `ls -a $1`
    do
        if [ -d $1"/"$file ]
        then
            if [[ $file != '.' && $file != '..' && file != '.git' && file != '.obsidian' ]]
            then
                echo "recursion $file"
                `cd $file`
                read_dir $1"/"$file
                `cd ..`
            fi
        elif echo "$file" | grep -q -E '\.tex$'	
            then	
                # extension="${file##*.}"
                path=$(pwd)
                filename="${file%.*}"
                echo "Converting $path/$file to $path/$filename.md"
                `pandoc -s $path"/"$file -o $path"/"$filename.md`
                # uncomment this line to delete the source file.
                # rm $file
        fi
    done
}
#测试目录 test
read_dir $1