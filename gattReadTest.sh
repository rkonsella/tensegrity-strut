for x in 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10 0x11 0x12 0x13 0x14 0x15 0x16
do
  echo $x
  for i in 0x3 0x4 0x5 0x6
  do
    gatttool --device=D2:B2:10:47:80:83 --char-read --handle $x -t random
    sleep 1
  done
done
