///FileCopyIn_Init()

globalvar InitFn, CopyInFn, CopyOutFn;

InitFn = external_define("FileCopyIn.dll",  "InitializeClass", dll_cdecl, ty_real, 0);
CopyInFn = external_define("FileCopyIn.dll",  "copyIn", dll_cdecl, ty_real, 2, ty_string, ty_string);
CopyOutFn = external_define("FileCopyIn.dll",  "copyOut", dll_cdecl, ty_real, 2, ty_string, ty_string);

external_call(InitFn);
