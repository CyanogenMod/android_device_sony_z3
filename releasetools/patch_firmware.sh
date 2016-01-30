#!/sbin/sh

VAR_NAME_LENGTH=23
DSDS_PHONEID_LEN=43

set -- $(cat /proc/cmdline)
for var in "$@"; do
    case "$var" in oemandroidboot.phoneid=*)
        PHONE_ID=${var:$VAR_NAME_LENGTH}
        ;;
    esac
done

function apply_dsds_patches {
    /system/bin/applypatch /system/etc/firmware/adsp.b00 - 6424e18cf1b4c9771b012f3b73147de3b1916507 500 e2c4df9135cd997ec38f2392aca24a89166f1ef2:/system/patch/dsds/adsp.b00.p
    /system/bin/applypatch /system/etc/firmware/adsp.b01 - b7b70e11b2a43e98563465962d2a8c282e6bbbd3 3196 3c40dd37bb5a304309c0c5ed415408633d5881d9:/system/patch/dsds/adsp.b01.p
    /system/bin/applypatch /system/etc/firmware/adsp.b03 - 24c6ea27c9ca3d269a3f9c49bc2a80829bc8dce5 5126128 a50a782fa25714ef4f7e5186f280fdadf497b232:/system/patch/dsds/adsp.b03.p
    /system/bin/applypatch /system/etc/firmware/adsp.b04 - 6509458fee14b3c1dd77fffa52422c49075be9ee 1663057 d3235f908855ae67b2aef1a41468d6e2abfb9e35:/system/patch/dsds/adsp.b04.p
    /system/bin/applypatch /system/etc/firmware/adsp.b05 - a1a9f447be66f3576fbeae38acafad62f52d4a71 1096090 d3c56cb1b5a5048f77276cb5b59a90824fcc297d:/system/patch/dsds/adsp.b05.p
    /system/bin/applypatch /system/etc/firmware/adsp.b07 - 24f9b99f70769722f0b4405f7be9f4cca5831e3b 948726 8b7ddfa04c759767b03a22e84bff5b5493a35c1c:/system/patch/dsds/adsp.b07.p
    /system/bin/applypatch /system/etc/firmware/adsp.b08 - efd32aa089208afb26bfe74650ee58dd9d03ca34 120 2ea83501b37ab6566aac6f1b5ee14f72293e7d25:/system/patch/dsds/adsp.b08.p
    /system/bin/applypatch /system/etc/firmware/adsp.b09 - c02312ea818368c5cc70af0493d50cd7a7eac779 770992 021777d71f447724d217d0134f12a71381975f5c:/system/patch/dsds/adsp.b09.p
    /system/bin/applypatch /system/etc/firmware/adsp.b10 - ab97d4007cbe3ad098be60527b35eb971927b2a0 173096 eaa843dc4f5300cc567b6bb86076b7240072db28:/system/patch/dsds/adsp.b10.p
    /system/bin/applypatch /system/etc/firmware/adsp.b11 - 3175f4e9c72ed712bcb98d5c61748918fdcb0eb3 10384 a4df259417873b958a498fe64a174792efe86b09:/system/patch/dsds/adsp.b11.p
    /system/bin/applypatch /system/etc/firmware/adsp.mdt - 0796bc127928873009f9e5a65487fb9adfb1dfb0 3696 db14a3ccfcad3f04acb065c9fb583b51eca8976c:/system/patch/dsds/adsp.mdt.p
    /system/bin/applypatch /system/etc/firmware/mba.b00 - 0399ea8427b737abe47e13b001d75bf367821f18 302224 48cba2169c7f988ab94e3ce47f3ae47290d9aceb:/system/patch/dsds/mba.b00.p
    /system/bin/applypatch /system/etc/firmware/modem.b00 - d4d929e84735a639955ded290b5046c0ce047e83 916 f4e84b250ea4afa90a04e093865a129f79a769e2:/system/patch/dsds/modem.b00.p
    /system/bin/applypatch /system/etc/firmware/modem.b01 - f764953aeb2bc9b95d76585ca755bed5d1248ee6 4352 73f230c8d5573bf3494508fb1445a4c38999498a:/system/patch/dsds/modem.b01.p
    /system/bin/applypatch /system/etc/firmware/modem.b02 - b8a4a7dad43f4f68f5539998ccfb3a54b7fac9ed 4052 11a1bfb92d78316950c7776d8fb8ffb4a92ce1ad:/system/patch/dsds/modem.b02.p
    /system/bin/applypatch /system/etc/firmware/modem.b03 - 76fbd5fa16027dfcd4c27e1a0c11db62162d6ae1 81920 e1f254b7e57fb15e0564f29ee82e9c634f3a42b4:/system/patch/dsds/modem.b03.p
    /system/bin/applypatch /system/etc/firmware/modem.b06 - f44a256812e96f03edefb8d47549d48abba0e7b2 177184 f4fbda080e214d9f9ff24a282f345386ca021c84:/system/patch/dsds/modem.b06.p
    /system/bin/applypatch /system/etc/firmware/modem.b08 - 282ed55ecb85e8e8edf4aef20b1a1219dccb37ef 49500 a5685b78ba5023308ad866c82fac0e631efaafb2:/system/patch/dsds/modem.b08.p
    /system/bin/applypatch /system/etc/firmware/modem.b09 - 341e6f9743d91121aa255fb281e9e5b2666a14ec 48420 98d91719fd1e81602e1b81c285e71808b0dcb7c8:/system/patch/dsds/modem.b09.p
    /system/bin/applypatch /system/etc/firmware/modem.b11 - 433a2c1349d5f13a9ecc18b10b2e3d941256270d 103384 c58863b0b423b16b83bc5dc087d14a8f19381bfc:/system/patch/dsds/modem.b11.p
    /system/bin/applypatch /system/etc/firmware/modem.b12 - fd5a22f1fe124f467de313a7ffd3c20cdb7b13e4 111060 fe56ba2665b83ca827e460cd24f2cc25c7d322a0:/system/patch/dsds/modem.b12.p
    /system/bin/applypatch /system/etc/firmware/modem.b13 - 5790475fbecab52ee13d37492b313f72d7432dee 1592180 6a4058ff54755fc16fbd8ff73e68779c90330c2b:/system/patch/dsds/modem.b13.p
    /system/bin/applypatch /system/etc/firmware/modem.b14 - db791768ac44f7ebf35f913e7b36de63ffc4b1f1 21646832 448a78fdf00ebfd72ae3ac219219216f08ea2ff7:/system/patch/dsds/modem.b14.p
    /system/bin/applypatch /system/etc/firmware/modem.b18 - 0482c9c203f1d1d19804b6121fa5a92e3286aa0e 8760656 ba5911ca9c64a2344e0addf4e2e77eb0c30b41b3:/system/patch/dsds/modem.b18.p
    /system/bin/applypatch /system/etc/firmware/modem.b19 - 39df3c0e41e70092dea5906a202ccabc44951f2f 3153792 e17095c026d98f5b7d8d7e94792e57c2bc964383:/system/patch/dsds/modem.b19.p
    /system/bin/applypatch /system/etc/firmware/modem.b22 - 9171c448df7171935118dfbb416244af7efb43f0 74320 753bd75ccb4738232b11b730f4aa8d0d35b98624:/system/patch/dsds/modem.b22.p
    /system/bin/applypatch /system/etc/firmware/modem.b23 - 8e1d734d0539144347cb480479bf042a5c330fda 418145 8e278c9ce95c87ce48645992a23391fa50ce85e5:/system/patch/dsds/modem.b23.p
    /system/bin/applypatch /system/etc/firmware/modem.b24 - d80bacab8d41f68aef23a210af44559701a73547 5562592 3d821bad066f114a5c488bcf6f9b9db70e4608c5:/system/patch/dsds/modem.b24.p
    /system/bin/applypatch /system/etc/firmware/modem.b25 - 54dbcfbb22ecc69acf3c905b6abf28bc80a6cb8d 1077116 05a0a75463f577b44ed159e3c70160b0ab70091d:/system/patch/dsds/modem.b25.p
    /system/bin/applypatch /system/etc/firmware/modem.mdt - dc565451e3c155e7c50e0f243fbe970c3fd8628e 5268 30e07ad681e723a447ce982ef629a7f696f1a0b9:/system/patch/dsds/modem.mdt.p
    /system/bin/applypatch /system/etc/wifi/bcmdhd.cal - 7f1c19759227df61e9e4ee71a1afc5a4321f88a6 2863 96224cd5c9ec4b5c701552519d99deae162d0900:/system/patch/dsds/bcmdhd.cal.p
}

if [ ${#PHONE_ID} -eq $DSDS_PHONEID_LEN ]; then
    apply_dsds_patches
fi
