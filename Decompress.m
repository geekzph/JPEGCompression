
function reco_image = Decompress(orig_image_Y,orig_image_U,orig_image_V)
%解压缩
YI=jpg2img(orig_image_Y);
UI=jpg2img(orig_image_U);
VI=jpg2img(orig_image_V);

%YUV转为RGB
RI=YI-0.001*UI+1.402*VI;  
GI=YI-0.344*UI-0.714*VI;  
BI=YI+1.772*UI+0.001*VI;

%经过DCT变换和量化后的YUV图像 
RGBI=cat(3,RI,GI,BI); 
RGBI=uint8(RGBI);  
reco_image = RGBI;
