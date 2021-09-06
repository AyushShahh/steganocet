:: BSD 3-Clause License
:: Copyright (c) 2021, Ayush Shah
:: https://github.com/AyushShahh/steganocet
:: All rights reserved.

@echo off
title Steganocet
mode con: cols=100 lines=30
echo.
echo What is the name of the image file inside the image folder in which you want to hide information?
echo e.g. cool_sunset.png  cake.jpg (typing image extension is important)
echo.
echo There should be no spaces in the name of image file.
echo e.g. cool image.jpg  aesthetic photo.png type of names are not allowed.
echo.
set /p imgfile=">> "
CScript zip.vbs hidefile confidential.zip
copy /b .\image\%imgfile%+confidential.zip %imgfile%
del /f/Q confidential.zip
