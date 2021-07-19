echo Getting visdom status:
sleep 1
echo -e "GET visdom HTTP/1.0\n\n" | nc visdom 8097 2>&1 | head -n 1

bash ./scripts/train_half_style.sh

