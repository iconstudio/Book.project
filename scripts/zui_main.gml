
if (instance_exists(oZUIMain))
 return oZUIMain.id;
else
 return instance_create(0, 0, oZUIMain);

