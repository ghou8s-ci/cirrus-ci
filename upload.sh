if [ -f ~/rom/out/target/product/joyeuse/Nusantara-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/joyeuse/ && ls Nusantara-*.zip)"
      rclone copy ~/rom/out/target/product/joyeuse/Nusantara-*.zip gunterez-ci:joyeuse -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/joyeuse/ && ls Nusantara-*.zip) Uploaded Successfully!"
fi
