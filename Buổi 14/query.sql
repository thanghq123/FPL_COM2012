-- VIẾT CÂU TRUY VẤN LẤY DỮ LIỆU TỪ BẢNG PHÒNG VÀ BẢNG LOẠI PHÒNG HIỂN THỊ CÁC THÔNG TIN SAU:
-- TÊN PHÒNG, TÊN LOẠI PHÒNG, ĐƠN GIÁ
SELECT
    PHONG.TEN_PHONG,
    LOAI_PHONG.TEN_LOAI_PHONG,
    PHONG.GIA_TIEN
FROM PHONG, LOAI_PHONG
WHERE PHONG.MA_LOAI = LOAI_PHONG.MA_LOAI

SELECT
    P.TEN_PHONG,
    LP.TEN_LOAI_PHONG,
    P.GIA_TIEN
FROM PHONG P
    INNER JOIN LOAI_PHONG LP ON LP.MA_LOAI = P.MA_LOAI

-- VIẾT CÂU TRUY VẤN HIỂN THỊ THÔNG TIN ĐẶT PHÒNG NHƯ SAU:
-- TÊN KHÁCH HÀNG, TÊN PHÒNG, NGÀY ĐẶT, SỐ GIỜ THUÊ
SELECT
    KH.TEN,
    P.TEN_PHONG,
    DP.NGAY_DAT,
    DP.SO_GIO_THUE,
    LP.TEN_LOAI_PHONG
FROM KHACH_HANG KH, PHONG P, DAT_PHONG DP, LOAI_PHONG LP
WHERE DP.MA_KH = KH.MA_KT AND DP.MA_PHONG = P.MA_PHONG AND P.MA_LOAI = LP.MA_LOAI


-- VIẾT CÂU TRUY VẤN HIỂN THỊ XEM KHÁCH ĐẶT LOẠI PHÒNG GÌ, TÊN KHÁCH HÀNG, TÊN LOẠI PHÒNG
SELECT
    KHACH_HANG.TEN,
    PHONG.TEN_PHONG,
    LOAI_PHONG.TEN_LOAI_PHONG,
    DAT_PHONG.NGAY_DAT,
    DAT_PHONG.SO_GIO_THUE
FROM KHACH_HANG
    INNER JOIN DAT_PHONG ON DAT_PHONG.MA_KH = KHACH_HANG.MA_KT
    INNER JOIN PHONG ON PHONG.MA_PHONG = DAT_PHONG.MA_PHONG
    INNER JOIN LOAI_PHONG ON PHONG.MA_LOAI = LOAI_PHONG.MA_LOAI


SELECT
    P.TEN_PHONG,
    LP.TEN_LOAI_PHONG
FROM LOAI_PHONG LP
    FULL OUTER JOIN PHONG P ON P.MA_LOAI = LP.MA_LOAI