if [ -f ~/rom/out/target/product/joyeuse/qassa_*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/joyeuse/ && ls qassa_*.zip)"
      rclone copy ~/rom/out/target/product/joyeuse/qassa_*.zip ghou8s-ci:joyeuse -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/joyeuse/ && ls qassa_*.zip) Uploaded Successfully!"
fi
