/* Prescription_category_color_code */
create or replace FUNCTION GET_COLOR_FN RETURN SYS_REFCURSOR AS
    P_VALUE SYS_REFCURSOR;
BEGIN
    OPEN P_VALUE FOR
    select
        REPLACE(TRIM(RTRIM(LTRIM(T_COLOR_CODE_VALUE_HEX))),' ','') VALUE_HEX,
        T_COLOR_CODE_VALUE_RGB RGB,
        T_COLOR_SHORT_DESC SHORT_DESC,
        T_COLOR_USE_DESC USE
    from T30306;
    RETURN P_VALUE;
END;
/*
select get_color_fn from dual;
*/
/* Result */
/*
"{<VALUE_HEX=#33CC33,RGB=51 204 51,SHORT_DESC=Green,USE=DDI>,<VALUE_HEX=#6633CC,RGB=102 51 204,SHORT_DESC=Purple,USE=PCW>,<VALUE_HEX=#000099,RGB=0 0 153,SHORT_DESC=Blue,USE=SYM>,<VALUE_HEX=#FF00FF,RGB=255 0 255,SHORT_DESC=Pinkkk,USE=DI>,<VALUE_HEX=#FFFF99	,RGB=255 255 153,SHORT_DESC=Yellow,USE=FDI>,<VALUE_HEX=#C0C0C0,RGB=192 192 192,SHORT_DESC=Grey,USE=DF>,<VALUE_HEX=#ffffff,RGB=255 255 255,SHORT_DESC=White,USE=PW>,<VALUE_HEX=#0d0c0c,RGB=13 12 12,SHORT_DESC=Black,USE=SW>,}"
*/
