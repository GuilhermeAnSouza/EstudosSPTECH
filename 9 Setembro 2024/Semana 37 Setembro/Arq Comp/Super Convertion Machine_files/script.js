// Decimal para Binario
function ContaDecimalBinario() {
    var calcula_DecBin = input_number_DecBin.value
    if (calcula_DecBin >= 32768) {
        var calcula_DecBin15 = calcula_DecBin - 32768
        var db16 = "1"
    } else {
        var calcula_DecBin15 = calcula_DecBin
        var db16 = "0"
    }
    if (calcula_DecBin15 >= 16384) {
        var calcula_DecBin14 = calcula_DecBin15 - 16384
        var db15 = "1"
    } else {
        var calcula_DecBin14 = calcula_DecBin15
        var db15 = "0"
    }
    if (calcula_DecBin14 >= 8192) {
        var calcula_DecBin13 = calcula_DecBin14 - 8192
        var db14 = "1"
    } else {
        var calcula_DecBin13 = calcula_DecBin14
        var db14 = "0"
    }
    if (calcula_DecBin13 >= 4096) {
        var calcula_DecBin12 = calcula_DecBin13 - 4096
        var db13 = "1"
    } else {
        var calcula_DecBin12 = calcula_DecBin13
        var db13 = "0"
    }
    if (calcula_DecBin12 >= 2048) {
        var calcula_DecBin11 = calcula_DecBin12 - 2048
        var db12 = "1"
    } else {
        var calcula_DecBin11 = calcula_DecBin12
        var db12 = "0"
    }
    if (calcula_DecBin11 >= 1024) {
        var calcula_DecBin10 = calcula_DecBin11 - 1024
        var db11 = "1"
    } else {
        var db11 = "0"
        var calcula_DecBin10 = calcula_DecBin11
    }
    if (calcula_DecBin10 >= 512) {
        var calcula_DecBin9 = calcula_DecBin10 - 512
        var db10 = "1"
    } else {
        var db10 = "0"
        var calcula_DecBin9 = calcula_DecBin10
    }
    if (calcula_DecBin9 >= 256) {
        var calcula_DecBin8 = calcula_DecBin9 - 256
        var db9 = "1"
    } else {
        var db9 = "0"
        var calcula_DecBin8 = calcula_DecBin9
    }
    if (calcula_DecBin8 >= 128) {
        var calcula_DecBin7 = calcula_DecBin8 - 128
        var db8 = "1"
    } else {
        var db8 = "0"
        var calcula_DecBin7 = calcula_DecBin8
    }
    if (calcula_DecBin7 >= 64) {
        var calcula_DecBin6 = calcula_DecBin7 - 64
        var db7 = "1"
    } else {
        var db7 = "0"
        var calcula_DecBin6 = calcula_DecBin7
    }
    if (calcula_DecBin6 >= 32) {
        var calcula_DecBin5 = calcula_DecBin6 - 32
        var db6 = "1"
    } else {
        var db6 = "0"
        var calcula_DecBin5 = calcula_DecBin6
    }
    if (calcula_DecBin5 >= 16) {
        var calcula_DecBin4 = calcula_DecBin5 - 16
        var db5 = "1"
    } else {
        var db5 = "0"
        var calcula_DecBin4 = calcula_DecBin5
    }
    if (calcula_DecBin4 >= 8) {
        var calcula_DecBin3 = calcula_DecBin4 - 8
        var db4 = "1"
    } else {
        var db4 = "0"
        var calcula_DecBin3 = calcula_DecBin4
    }
    if (calcula_DecBin3 >= 4) {
        var calcula_DecBin2 = calcula_DecBin3 - 4
        var db3 = "1"
    } else {
        var db3 = "0"
        var calcula_DecBin2 = calcula_DecBin3
    }
    if (calcula_DecBin2 >= 2) {
        var calcula_DecBin1 = calcula_DecBin2 - 2
        var db2 = "1"
    } else {
        var db2 = "0"
        var calcula_DecBin1 = calcula_DecBin2
    }
    if (calcula_DecBin1 >= 1) {
        var calcula_DecBin0 = calcula_DecBin1 - 1
        var db1 = "1"
    } else {
        var db1 = "0"
        var calcula_DecBin0 = calcula_DecBin1
    }
    var geral_DecBin = db16 + db15 + db14 + db13 + db12 + db11 + db10 + db9 + db8 + db7 + db6 + db5 + db4 + db3 + db2 + db1
    document.getElementById('DeBi').innerHTML = geral_DecBin

    if (inp_contaDec1.checked == true) {document.getElementById('DeBi1').innerHTML = `<br>${calcula_DecBin} - 32768 = ${calcula_DecBin15} (${db16})<br>${calcula_DecBin15} - 16384 = ${calcula_DecBin14} (${db15})<br>${calcula_DecBin14} - 8192 = ${calcula_DecBin13} (${db14})<br>${calcula_DecBin13} - 4096 = ${calcula_DecBin12} (${db13})<br>${calcula_DecBin12} - 2048 = ${calcula_DecBin11} (${db12})<br>${calcula_DecBin11} - 1024 = ${calcula_DecBin10} (${db11})<br>${calcula_DecBin10} - 512 = ${calcula_DecBin9} (${db10})<br>${calcula_DecBin9} - 256 = ${calcula_DecBin8} (${db9})<br>${calcula_DecBin8} - 128 = ${calcula_DecBin7} (${db8})<br>${calcula_DecBin7} - 64 = ${calcula_DecBin6} (${db7})<br>${calcula_DecBin6} - 32 = ${calcula_DecBin5} (${db6})<br>${calcula_DecBin5} - 16 = ${calcula_DecBin4} (${db5})<br>${calcula_DecBin4} - 8 = ${calcula_DecBin3} (${db4})<br>${calcula_DecBin3} - 4 = ${calcula_DecBin2} (${db3})<br>${calcula_DecBin2} - 2 = ${calcula_DecBin1} (${db2})<br>${calcula_DecBin1} - 1 = ${calcula_DecBin0} (${db1})`}
    else {
        document.getElementById('DeBi1').innerHTML = ``
    }
    
}
//           <!--INICIO DE DECIMAL PARA OCTAL-->
function ContaDecimalOctal() {
    var calcula_DecOct = input_number_DecOct.value
    if (calcula_DecOct >= 32768) {
        var calcula_DecOct15 = calcula_DecOct - 32768
        var do16 = 1
        var do16c = 1
    } else {
        var calcula_DecOct15 = calcula_DecOct
        var do16 = 0
        var do16c = 0
    }
    if (calcula_DecOct15 >= 16384) {
        var calcula_DecOct14 = calcula_DecOct15 - 16384
        var do15 = 4
        var do15c = 1
    } else {
        var calcula_DecOct14 = calcula_DecOct15
        var do15 = 0
        var do15c = 0
    }
    if (calcula_DecOct14 >= 8192) {
        var calcula_DecOct13 = calcula_DecOct14 - 8192
        var do14 = 2
        var do14c = 1
    } else {
        var calcula_DecOct13 = calcula_DecOct14
        var do14 = 0
        var do14c = 0
    }
    if (calcula_DecOct13 >= 4096) {
        var calcula_DecOct12 = calcula_DecOct13 - 4096
        var do13 = 1
        var do13c = 1
    } else {
        var calcula_DecOct12 = calcula_DecOct13
        var do13 = 0
        var do13c = 0
    }
    if (calcula_DecOct12 >= 2048) {
        var calcula_DecOct11 = calcula_DecOct12 - 2048
        var do12 = 4
        var do12c = 1
    } else {
        var calcula_DecOct11 = calcula_DecOct12
        var do12 = 0
        var do12c = 0
    }
    if (calcula_DecOct11 >= 1024) {
        var calcula_DecOct10 = calcula_DecOct11 - 1024
        var do11 = 2
        var do11c = 1
    } else {
        var do11 = 0
        var do11c = 0
        var calcula_DecOct10 = calcula_DecOct11
    }
    if (calcula_DecOct10 >= 512) {
        var calcula_DecOct9 = calcula_DecOct10 - 512
        var do10 = 1
        var do10c = 1
    } else {
        var do10 = 0
        var do10c = 0
        var calcula_DecOct9 = calcula_DecOct10
    }
    if (calcula_DecOct9 >= 256) {
        var calcula_DecOct8 = calcula_DecOct9 - 256
        var do9 = 4
        var do9c = 1
    } else {
        var do9 = 0
        var do9c = 0
        var calcula_DecOct8 = calcula_DecOct9
    }
    if (calcula_DecOct8 >= 128) {
        var calcula_DecOct7 = calcula_DecOct8 - 128
        var do8 = 2
        var do8c = 1
    } else {
        var do8 = 0
        var do8c = 0
        var calcula_DecOct7 = calcula_DecOct8
    }
    if (calcula_DecOct7 >= 64) {
        var calcula_DecOct6 = calcula_DecOct7 - 64
        var do7 = 1
        var do7c = 1
    } else {
        var do7 = 0
        var do7c = 0
        var calcula_DecOct6 = calcula_DecOct7
    }
    if (calcula_DecOct6 >= 32) {
        var calcula_DecOct5 = calcula_DecOct6 - 32
        var do6 = 4
        var do6c = 1
    } else {
        var do6 = 0
        var do6c = 0
        var calcula_DecOct5 = calcula_DecOct6
    }
    if (calcula_DecOct5 >= 16) {
        var calcula_DecOct4 = calcula_DecOct5 - 16
        var do5 = 2
        var do5c = 1
    } else {
        var do5 = 0
        var do5c = 0
        var calcula_DecOct4 = calcula_DecOct5
    }
    if (calcula_DecOct4 >= 8) {
        var calcula_DecOct3 = calcula_DecOct4 - 8
        var do4 = 1
        var do4c = 1
    } else {
        var do4 = 0
        var do4c = 0
        var calcula_DecOct3 = calcula_DecOct4
    }
    if (calcula_DecOct3 >= 4) {
        var calcula_DecOct2 = calcula_DecOct3 - 4
        var do3 = 4
        var do3c = 1
    } else {
        var do3 = 0
        var do3c = 0
        var calcula_DecOct2 = calcula_DecOct3
    }
    if (calcula_DecOct2 >= 2) {
        var calcula_DecOct1 = calcula_DecOct2 - 2
        var do2 = 2
        var do2c = 1
    } else {
        var do2 = 0
        var do2c = 0
        var calcula_DecOct1 = calcula_DecOct2
    }
    if (calcula_DecOct1 >= 1) {
        var do1 = 1
        var do1c = 1
        var calcula_DecOct0 = calcula_DecOct1 - 1
    } else {
        var do1 = 0
        var do1c = 0
        var calcula_DecOct0 = calcula_DecOct1
    }
    var geral_DecOct = do16.toString() + (do15 + do14 + do13).toString() + (do12 + do11 + do10).toString() + (do9 + do8 + do7).toString() + (do6 + do5 + do4).toString() + (do3 + do2 + do1).toString()
    document.getElementById('DeOc').innerHTML = geral_DecOct

    if (inp_contaDec2.checked == true) {
        document.getElementById('DeOc1').innerHTML = `<br>${calcula_DecOct} - 32768 = ${calcula_DecOct15} (${do16c})<br>${calcula_DecOct15} - 16384 = ${calcula_DecOct14} (${do15c})<br>${calcula_DecOct14} - 8192 = ${calcula_DecOct13} (${do14c})<br>${calcula_DecOct13} - 4096 = ${calcula_DecOct12} (${do13c})<br>${calcula_DecOct12} - 2048 = ${calcula_DecOct11} (${do12c})<br>${calcula_DecOct11} - 1024 = ${calcula_DecOct10} (${do11c})<br>${calcula_DecOct10} - 512 = ${calcula_DecOct9} (${do10c})<br>${calcula_DecOct9} - 256 = ${calcula_DecOct8} (${do9c})<br>${calcula_DecOct8} - 128 = ${calcula_DecOct7} (${do8c})<br>${calcula_DecOct7} - 64 = ${calcula_DecOct6} (${do7c})<br>${calcula_DecOct6} - 32 = ${calcula_DecOct5} (${do6c})<br>${calcula_DecOct5} - 16 = ${calcula_DecOct4} (${do5c})<br>${calcula_DecOct4} - 8 = ${calcula_DecOct3} (${do4c})<br>${calcula_DecOct3} - 4 = ${calcula_DecOct2} (${do3c})<br>${calcula_DecOct2} - 2 = ${calcula_DecOct1} (${do2c})<br>${calcula_DecOct1} - 1 = ${calcula_DecOct0} (${do1c})<br>logo<br>(${do16c}x1) + (${do15c}x4 + ${do14c}x2 + ${do13c}x1) + (${do12c}x4 + ${do11c}x2 + ${do10c}x1) + (${do9c}x4 + ${do8c}x2 + ${do7c}x1) + (${do6c}x4 + ${do5c}x2 + ${do4c}x1) + (${do3c}x4 + ${do2c}x2 + ${do1c}x1) = ${geral_DecOct}`}
    else {
        document.getElementById('DeOc1').innerHTML = ``
    }
    
}
//           <!--INICIO DE DECIMAL PARA HEXADECIMAL-->
function ContaDecimalHexadecimal() {
    var calcula_DecHex = input_number_DecHex.value
    if (calcula_DecHex >= 32768) {
        var calcula_DecHex15 = calcula_DecHex - 32768
        var dh16 = 8
        var dh16c = 1
    } else {
        var calcula_DecHex15 = calcula_DecHex
        var dh16 = 0
        var dh16c = 0
    }
    if (calcula_DecHex15 >= 16384) {
        var calcula_DecHex14 = calcula_DecHex15 - 16384
        var dh15 = 4
        var dh15c = 1
    } else {
        var calcula_DecHex14 = calcula_DecHex15
        var dh15 = 0
        var dh15c = 0
    }
    if (calcula_DecHex14 >= 8192) {
        var calcula_DecHex13 = calcula_DecHex14 - 8192
        var dh14 = 2
        var dh14c = 1
    } else {
        var calcula_DecHex13 = calcula_DecHex14
        var dh14 = 0
        var dh14c = 0
    }
    if (calcula_DecHex13 >= 4096) {
        var calcula_DecHex12 = calcula_DecHex13 - 4096
        var dh13 = 1
        var dh13c = 1
    } else {
        var calcula_DecHex12 = calcula_DecHex13
        var dh13 = 0
        var dh13c = 0
    }
    if (calcula_DecHex12 >= 2048) {
        var calcula_DecHex11 = calcula_DecHex12 - 2048
        var dh12 = 8
        var dh12c = 1
    } else {
        var calcula_DecHex11 = calcula_DecHex12
        var dh12 = 0
        var dh12c = 0
    }
    if (calcula_DecHex11 >= 1024) {
        var calcula_DecHex10 = calcula_DecHex11 - 1024
        var dh11 = 4
        var dh11c = 1
    } else {
        var dh11 = 0
        var dh11c = 0
        var calcula_DecHex10 = calcula_DecHex11
    }
    if (calcula_DecHex10 >= 512) {
        var calcula_DecHex9 = calcula_DecHex10 - 512
        var dh10 = 2
        var dh10c = 1
    } else {
        var dh10 = 0
        var dh10c = 0
        var calcula_DecHex9 = calcula_DecHex10
    }
    if (calcula_DecHex9 >= 256) {
        var calcula_DecHex8 = calcula_DecHex9 - 256
        var dh9 = 1
        var dh9c = 1
    } else {
        var dh9 = 0
        var dh9c = 0
        var calcula_DecHex8 = calcula_DecHex9
    }
    if (calcula_DecHex8 >= 128) {
        var calcula_DecHex7 = calcula_DecHex8 - 128
        var dh8 = 8
        var dh8c = 1
    } else {
        var dh8 = 0
        var dh8c = 0
        var calcula_DecHex7 = calcula_DecHex8
    }
    if (calcula_DecHex7 >= 64) {
        var calcula_DecHex6 = calcula_DecHex7 - 64
        var dh7 = 4
        var dh7c = 1
    } else {
        var dh7 = 0
        var dh7c = 0
        var calcula_DecHex6 = calcula_DecHex7
    }
    if (calcula_DecHex6 >= 32) {
        var calcula_DecHex5 = calcula_DecHex6 - 32
        var dh6 = 2
        var dh6c = 1
    } else {
        var dh6 = 0
        var dh6c = 0
        var calcula_DecHex5 = calcula_DecHex6
    }
    if (calcula_DecHex5 >= 16) {
        var calcula_DecHex4 = calcula_DecHex5 - 16
        var dh5 = 1
        var dh5c = 1
    } else {
        var dh5 = 0
        var dh5c = 0
        var calcula_DecHex4 = calcula_DecHex5
    }
    if (calcula_DecHex4 >= 8) {
        var calcula_DecHex3 = calcula_DecHex4 - 8
        var dh4 = 8
        var dh4c = 1
    } else {
        var dh4 = 0
        var dh4c = 0
        var calcula_DecHex3 = calcula_DecHex4
    }
    if (calcula_DecHex3 >= 4) {
        var calcula_DecHex2 = calcula_DecHex3 - 4
        var dh3 = 4
        var dh3c = 1
    } else {
        var dh3 = 0
        var dh3c = 0
        var calcula_DecHex2 = calcula_DecHex3
    }
    if (calcula_DecHex2 >= 2) {
        var calcula_DecHex1 = calcula_DecHex2 - 2
        var dh2 = 2
        var dh2c = 1
    } else {
        var dh2 = 0
        var dh2c = 0
        var calcula_DecHex1 = calcula_DecHex2
    }
    if (calcula_DecHex1 >= 1) {
        var dh1 = 1
        var dh1c = 1
        var calcula_DecHex0 = calcula_DecHex1 - 1
    } else {
        var dh1 = 0
        var dh1c = 0
        var calcula_DecHex0 = calcula_DecHex1
    }
    //var transforma_DecHex1 = new Array("A", "B", "C", "D", "E", "F")
    var transforma_DecHex1 = dh16 + dh15 + dh14 + dh13
    var transforma_DecHex2 = dh12 + dh11 + dh10 + dh9
    var transforma_DecHex3 = dh8 + dh7 + dh6 + dh5
    var transforma_DecHex4 = dh4 + dh3 + dh2 + dh1
    if (transforma_DecHex1 == 10) {
     var transforma_DecHex1 = "A"
    } else if (transforma_DecHex1 == 11) {
        var transforma_DecHex1 = "B"
    } else if (transforma_DecHex1 == 12) {
        var transforma_DecHex1 = "C"
    } else if (transforma_DecHex1 == 13) {
        var transforma_DecHex1 = "D"
    } else if (transforma_DecHex1 == 14) {
        var transforma_DecHex1 = "E"
    } else if (transforma_DecHex1 == 15) {
        var transforma_DecHex1 = "F"
    }
    if (transforma_DecHex2 == 10) {
     var transforma_DecHex2 = "A"
    } else if (transforma_DecHex2 == 11) {
        var transforma_DecHex2 = "B"
    } else if (transforma_DecHex2 == 12) {
        var transforma_DecHex2 = "C"
    } else if (transforma_DecHex2 == 13) {
        var transforma_DecHex2 = "D"
    } else if (transforma_DecHex2 == 14) {
        var transforma_DecHex2 = "E"
    } else if (transforma_DecHex2 == 15) {
        var transforma_DecHex2 = "F"
    }
    if (transforma_DecHex3 == 10) {
     var transforma_DecHex3 = "A"
    } else if (transforma_DecHex3 == 11) {
        var transforma_DecHex3 = "B"
    } else if (transforma_DecHex3 == 12) {
        var transforma_DecHex3 = "C"
    } else if (transforma_DecHex3 == 13) {
        var transforma_DecHex3 = "D"
    } else if (transforma_DecHex3 == 14) {
        var transforma_DecHex3 = "E"
    } else if (transforma_DecHex3 == 15) {
        var transforma_DecHex3 = "F"
    }
    if (transforma_DecHex4 == 10) {
     var transforma_DecHex4 = "A"
    } else if (transforma_DecHex4 == 11) {
        var transforma_DecHex4 = "B"
    } else if (transforma_DecHex4 == 12) {
        var transforma_DecHex4 = "C"
    } else if (transforma_DecHex4 == 13) {
        var transforma_DecHex4 = "D"
    } else if (transforma_DecHex4 == 14) {
        var transforma_DecHex4 = "E"
    } else if (transforma_DecHex4 == 15) {
        var transforma_DecHex4 = "F"
    }
    var geral_DecHex = (transforma_DecHex1).toString() + (transforma_DecHex2).toString() + (transforma_DecHex3).toString() + (transforma_DecHex4).toString()
    document.getElementById('DeHe').innerHTML = geral_DecHex
    if (inp_contaDec3.checked == true) {
        document.getElementById('DeHe1').innerHTML = `<br>${calcula_DecHex} - 32768 = ${calcula_DecHex15} (${dh16c})<br>${calcula_DecHex15} - 16384 = ${calcula_DecHex14} (${dh15c})<br>${calcula_DecHex14} - 8192 = ${calcula_DecHex13} (${dh14c})<br>${calcula_DecHex13} - 4096 = ${calcula_DecHex12} (${dh13c})<br>${calcula_DecHex12} - 2048 = ${calcula_DecHex11} (${dh12c})<br>${calcula_DecHex11} - 1024 = ${calcula_DecHex10} (${dh11c})<br>${calcula_DecHex10} - 512 = ${calcula_DecHex9} (${dh10c})<br>${calcula_DecHex9} - 256 = ${calcula_DecHex8} (${dh9c})<br>${calcula_DecHex8} - 128 = ${calcula_DecHex7} (${dh8c})<br>${calcula_DecHex7} - 64 = ${calcula_DecHex6} (${dh7c})<br>${calcula_DecHex6} - 32 = ${calcula_DecHex5} (${dh6c})<br>${calcula_DecHex5} - 16 = ${calcula_DecHex4} (${dh5c})<br>${calcula_DecHex4} - 8 = ${calcula_DecHex3} (${dh4c})<br>${calcula_DecHex3} - 4 = ${calcula_DecHex2} (${dh3c})<br>${calcula_DecHex2} - 2 = ${calcula_DecHex1} (${dh2c})<br>${calcula_DecHex1} - 1 = ${calcula_DecHex0} (${dh1c})<br>logo<br>(${dh16c}x8 + ${dh15c}x4 + ${dh14c}x2 + ${dh13c}x1) + (${dh12c}x8 + ${dh11c}x4 + ${dh10c}x2 + ${dh9c}x1) + (${dh8c}x8 + ${dh7c}x4 + ${dh6c}x2 + ${dh5c}x1) + (${dh4c}x8 + ${dh3c}x4 + ${dh2c}x2 + ${dh1c}x1) = ${geral_DecHex}`}
    else {
        document.getElementById('DeHe1').innerHTML = ``
    }
    
}
//           <!--INICIO DE BINÁRIO PARA DECIMAL-->
function ContaBinarioDecimal() {
    var calcula_BinDec1 = document.getElementById("input_checkbox_BinDec1");
    var calcula_BinDec2 = document.getElementById("input_checkbox_BinDec2");
    var calcula_BinDec3 = document.getElementById("input_checkbox_BinDec3");
    var calcula_BinDec4 = document.getElementById("input_checkbox_BinDec4");
    var calcula_BinDec5 = document.getElementById("input_checkbox_BinDec5");
    var calcula_BinDec6 = document.getElementById("input_checkbox_BinDec6");
    var calcula_BinDec7 = document.getElementById("input_checkbox_BinDec7");
    var calcula_BinDec8 = document.getElementById("input_checkbox_BinDec8");
    var calcula_BinDec9 = document.getElementById("input_checkbox_BinDec9");
    var calcula_BinDec10 = document.getElementById("input_checkbox_BinDec10");
    var calcula_BinDec11 = document.getElementById("input_checkbox_BinDec11");
    var calcula_BinDec12 = document.getElementById("input_checkbox_BinDec12");
    var calcula_BinDec13 = document.getElementById("input_checkbox_BinDec13");
    var calcula_BinDec14 = document.getElementById("input_checkbox_BinDec14");
    var calcula_BinDec15 = document.getElementById("input_checkbox_BinDec15");
    var calcula_BinDec16 = document.getElementById("input_checkbox_BinDec16");
    if (calcula_BinDec1.checked == true) {
        var bd1 = 1
    } else {
        var bd1 = 0
    }
    if (calcula_BinDec2.checked == true) {
        var bd2 = 2
    } else {
        var bd2 = 0
    }
    if (calcula_BinDec3.checked == true) {
        var bd3 = 4
    } else {
        var bd3 = 0
    }
    if (calcula_BinDec4.checked == true) {
        var bd4 = 8
    } else {
        var bd4 = 0
    }
    if (calcula_BinDec5.checked == true) {
        var bd5 = 16
    } else {
        var bd5 = 0
    }
    if (calcula_BinDec6.checked == true) {
        var bd6 = 32
    } else {
        var bd6 = 0
    }
    if (calcula_BinDec7.checked == true) {
        var bd7 = 64
    } else {
        var bd7 = 0
    }
    if (calcula_BinDec8.checked == true) {
        var bd8 = 128
    } else {
        var bd8 = 0
    }
    if (calcula_BinDec9.checked == true) {
        var bd9 = 256
    } else {
        var bd9 = 0
    }
    if (calcula_BinDec10.checked == true) {
        var bd10 = 512
    } else {
        var bd10 = 0
    }
    if (calcula_BinDec11.checked == true) {
        var bd11= 1024
    } else {
        var bd11 = 0
    }
    if (calcula_BinDec12.checked == true) {
        var bd12 = 2048
    } else {
        var bd12 = 0
    }
    if (calcula_BinDec13.checked == true) {
        var bd13 = 4096
    } else {
        var bd13 = 0
    }
    if (calcula_BinDec14.checked == true) {
        var bd14 = 8192
    } else {
        var bd14 = 0
    }
    if (calcula_BinDec15.checked == true) {
        var bd15 = 16384
    } else {
        var bd15 = 0
    }
    if (calcula_BinDec16.checked == true) {
        var bd16 = 32768
    } else {
        var bd16 = 0
    }
    var geral_BinDec = (bd1 + bd2 + bd3 + bd4 + bd5 + bd6 + bd7 + bd8 + bd9 + bd10 + bd11 + bd12 + bd13 + bd14 + bd15 + bd16)
    document.getElementById('BiDe').innerHTML = (geral_BinDec)
    if (inp_contaBin1.checked == true) {
    document.getElementById('BiDe1').innerHTML = `<br> ${bd16}x1 + ${bd15}x1 + ${bd14}x1 + ${bd13}x1 + ${bd12}x1 + ${bd11}x1 + ${bd10}x1 + ${bd9}x1 + ${bd8}x1 + ${bd7}x1 + ${bd6}x1 + ${bd5}x1 + ${bd4}x1 + ${bd3}x1 + ${bd2}x1 + ${bd1}x1 = ${geral_BinDec}`}
    else {
    document.getElementById('BiDe1').innerHTML = ``
    }
}
//           <!--INICIO DE BINÁRIO PARA OCTAL-->
function ContaBinarioOctal() {
    var calcula_BinOct1 = document.getElementById("input_checkbox_BinOct1");
    var calcula_BinOct2 = document.getElementById("input_checkbox_BinOct2");
    var calcula_BinOct3 = document.getElementById("input_checkbox_BinOct3");
    var calcula_BinOct4 = document.getElementById("input_checkbox_BinOct4");
    var calcula_BinOct5 = document.getElementById("input_checkbox_BinOct5");
    var calcula_BinOct6 = document.getElementById("input_checkbox_BinOct6");
    var calcula_BinOct7 = document.getElementById("input_checkbox_BinOct7");
    var calcula_BinOct8 = document.getElementById("input_checkbox_BinOct8");
    var calcula_BinOct9 = document.getElementById("input_checkbox_BinOct9");
    var calcula_BinOct10 = document.getElementById("input_checkbox_BinOct10");
    var calcula_BinOct11 = document.getElementById("input_checkbox_BinOct11");
    var calcula_BinOct12 = document.getElementById("input_checkbox_BinOct12");
    var calcula_BinOct13 = document.getElementById("input_checkbox_BinOct13");
    var calcula_BinOct14 = document.getElementById("input_checkbox_BinOct14");
    var calcula_BinOct15 = document.getElementById("input_checkbox_BinOct15");
    var calcula_BinOct16 = document.getElementById("input_checkbox_BinOct16");
    if (calcula_BinOct1.checked == true) {
        var bo1 = 1
    } else {
        var bo1 = 0
    }
    if (calcula_BinOct2.checked == true) {
        var bo2 = 2
    } else {
        var bo2 = 0
    }
    if (calcula_BinOct3.checked == true) {
        var bo3 = 4
    } else {
        var bo3 = 0
    }
    if (calcula_BinOct4.checked == true) {
        var bo4 = 1
    } else {
        var bo4 = 0
    }
    if (calcula_BinOct5.checked == true) {
        var bo5 = 2
    } else {
        var bo5 = 0
    }
    if (calcula_BinOct6.checked == true) {
        var bo6 = 4
    } else {
        var bo6 = 0
    }
    if (calcula_BinOct7.checked == true) {
        var bo7 = 1
    } else {
        var bo7 = 0
    }
    if (calcula_BinOct7.checked == true) {
        var bo8 = 2
    } else {
        var bo8 = 0
    }
    if (calcula_BinOct9.checked == true) {
        var bo9 = 4
    } else {
        var bo9 = 0
    }
    if (calcula_BinOct10.checked == true) {
        var bo10 = 1
    } else {
        var bo10 = 0
    }
    if (calcula_BinOct11.checked == true) {
        var bo11= 2
    } else {
        var bo11 = 0
    }
    if (calcula_BinOct12.checked == true) {
        var bo12 = 4
    } else {
        var bo12 = 0
    }
    if (calcula_BinOct13.checked == true) {
        var bo13 = 1
    } else {
        var bo13 = 0
    }
    if (calcula_BinOct14.checked == true) {
        var bo14 = 2
    } else {
        var bo14 = 0
    }
    if (calcula_BinOct15.checked == true) {
        var bo15 = 4
    } else {
        var bo15 = 0
    }
    if (calcula_BinOct16.checked == true) {
        var bo16 = 1
    } else {
        var bo16 = 0
    }
    var transforma_BinOct1 = bo1 + bo2 + bo3
    var transforma_BinOct2 = bo4 + bo5 + bo6
    var transforma_BinOct3 = bo7 + bo8 + bo9
    var transforma_BinOct4 = bo10 + bo11 + bo12
    var transforma_BinOct5 = bo13 + bo14 + bo15
    var geral_BinOct = (bo16).toString() + (transforma_BinOct5).toString() + (transforma_BinOct4).toString() + (transforma_BinOct3).toString() + (transforma_BinOct2).toString() + (transforma_BinOct1).toString()
    document.getElementById('BiOc').innerHTML = (geral_BinOct)

    if (inp_contaBin2.checked == true) {
        document.getElementById('BiOc1').innerHTML = `<br> (${bo16}x1) + (${bo15}x1 + ${bo14}x1 + ${bo13}x1) + (${bo12}x1 + ${bo11}x1 + ${bo10}x1) + (${bo9}x1 + ${bo8}x1 + ${bo7}x1) + (${bo6}x1 + ${bo5}x1 + ${bo4}x1) + (${bo3}x1 + ${bo2}x1 + ${bo1}x1) = ${geral_BinOct}`
    }
    else {
        document.getElementById('BiOc1').innerHTML = ``
    }
    
}
//           <!--INICIO DE BINÁRIO PARA HEXADECIMAL-->
function ContaBinarioHexaDecimal(){
    var calcula_BinHex1 = document.getElementById("input_checkbox_BinHex1");
    var calcula_BinHex2 = document.getElementById("input_checkbox_BinHex2");
    var calcula_BinHex3 = document.getElementById("input_checkbox_BinHex3");
    var calcula_BinHex4 = document.getElementById("input_checkbox_BinHex4");
    var calcula_BinHex5 = document.getElementById("input_checkbox_BinHex5");
    var calcula_BinHex6 = document.getElementById("input_checkbox_BinHex6");
    var calcula_BinHex7 = document.getElementById("input_checkbox_BinHex7");
    var calcula_BinHex8 = document.getElementById("input_checkbox_BinHex8");
    var calcula_BinHex9 = document.getElementById("input_checkbox_BinHex9");
    var calcula_BinHex10 = document.getElementById("input_checkbox_BinHex10");
    var calcula_BinHex11 = document.getElementById("input_checkbox_BinHex11");
    var calcula_BinHex12 = document.getElementById("input_checkbox_BinHex12");
    var calcula_BinHex13 = document.getElementById("input_checkbox_BinHex13");
    var calcula_BinHex14 = document.getElementById("input_checkbox_BinHex14");
    var calcula_BinHex15 = document.getElementById("input_checkbox_BinHex15");
    var calcula_BinHex16 = document.getElementById("input_checkbox_BinHex16");
    if (calcula_BinHex1.checked == true) {
        var bh1 = 1
    } else {
        var bh1 = 0
    }
    if (calcula_BinHex2.checked == true) {
        var bh2 = 2
    } else {
        var bh2 = 0
    }
    if (calcula_BinHex3.checked == true) {
        var bh3 = 4
    } else {
        var bh3 = 0
    }
    if (calcula_BinHex4.checked == true) {
        var bh4 = 8
    } else {
        var bh4 = 0
    }
    if (calcula_BinHex5.checked == true) {
        var bh5 = 1
    } else {
        var bh5 = 0
    }
    if (calcula_BinHex6.checked == true) {
        var bh6 = 2
    } else {
        var bh6 = 0
    }
    if (calcula_BinHex7.checked == true) {
        var bh7 = 4
    } else {
        var bh7 = 0
    }
    if (calcula_BinHex8.checked == true) {
        var bh8 = 8
    } else {
        var bh8 = 0
    }
    if (calcula_BinHex9.checked == true) {
        var bh9 = 1
    } else {
        var bh9 = 0
    }
    if (calcula_BinHex10.checked == true) {
        var bh10 = 2
    } else {
        var bh10 = 0
    }
    if (calcula_BinHex11.checked == true) {
        var bh11= 4
    } else {
        var bh11 = 0
    }
    if (calcula_BinHex12.checked == true) {
        var bh12 = 8
    } else {
        var bh12 = 0
    }
    if (calcula_BinHex13.checked == true) {
        var bh13 = 1
    } else {
        var bh13 = 0
    }
    if (calcula_BinHex14.checked == true) {
        var bh14 = 2
    } else {
        var bh14 = 0
    }
    if (calcula_BinHex15.checked == true) {
        var bh15 = 4
    } else {
        var bh15 = 0
    }
    if (calcula_BinHex16.checked == true) {
        var bh16 = 8
    } else {
        var bh16 = 0
    }
    var transforma_BinHex1 = bh1 + bh2 + bh3 + bh4
    var transforma_BinHex2 = bh5 + bh6 + bh7 + bh8 
    var transforma_BinHex3 = bh9 + bh10 + bh11 + bh12
    var transforma_BinHex4 = bh13 + bh14 + bh15 + bh16
    if (transforma_BinHex1 == 10) {
        var transforma_BinHex1 = "A"
    } else if(transforma_BinHex1 == 11) {
        var transforma_BinHex1 = "B"
    } else if(transforma_BinHex1 == 12) {
        var transforma_BinHex1 = "C"
    } else if(transforma_BinHex1 == 13) {
        var transforma_BinHex1 = "D"
    } else if(transforma_BinHex1 == 14) {
        var transforma_BinHex1 = "E"
    } else if(transforma_BinHex1 == 15) {
        var transforma_BinHex1 = "F"
    }
    if(transforma_BinHex2 == 10) {
        var transforma_BinHex2 = "A"
    } else if(transforma_BinHex2 == 11) {
        var transforma_BinHex2 = "B"
    } else if(transforma_BinHex2 == 12) {
        var transforma_BinHex2 = "C"
    } else if(transforma_BinHex2 == 13) {
        var transforma_BinHex2 = "D"
    } else if(transforma_BinHex2 == 14) {
        var transforma_BinHex2 = "E"
    } else if(transforma_BinHex2 == 15) {
        var transforma_BinHex2 = "F"
    }
    if(transforma_BinHex3 == 10) {
        var transforma_BinHex3 = "A"
    } else if(transforma_BinHex3 == 11) {
        var transforma_BinHex3 = "B"
    } else if(transforma_BinHex3 == 12) {
        var transforma_BinHex3 = "C"
    } else if(transforma_BinHex3 == 13) {
        var transforma_BinHex3 = "D"
    } else if(transforma_BinHex3 == 14) {
        var transforma_BinHex3 = "E"
    } else if(transforma_BinHex3 == 15) {
        var transforma_BinHex3 = "F"
    }
    if(transforma_BinHex4 == 10) {
        var transforma_BinHex4 = "A"
    } else if(transforma_BinHex4 == 11) {
        var transforma_BinHex4 = "B"
    } else if(transforma_BinHex4 == 12) {
        var transforma_BinHex4 = "C"
    } else if(transforma_BinHex4 == 13) {
        var transforma_BinHex4 = "D"
    } else if(transforma_BinHex4 == 14) {
        var transforma_BinHex4 = "E"
    } else if(transforma_BinHex4 == 15) {
        var transforma_BinHex4 = "F"
    }
    var geral_BinHex = (transforma_BinHex4).toString() + (transforma_BinHex3).toString() + (transforma_BinHex2).toString() + (transforma_BinHex1).toString()
    document.getElementById('BiHe').innerHTML = (geral_BinHex)

    if (inp_contaBin3.checked == true) {
        document.getElementById('BiHe1').innerHTML = `<br> (${bh16}x1 + ${bh15}x1 + ${bh14}x1 + ${bh13}x1) + (${bh12}x1 + ${bh11}x1 + ${bh10}x1 + ${bh9}x1) + (${bh8}x1 + ${bh7}x1 + ${bh6}x1 + ${bh5}x1) + (${bh4}x1 + ${bh3}x1 + ${bh2}x1 + ${bh1}x1) = ${geral_BinHex}`
    }
    else {
        document.getElementById('BiHe1').innerHTML = `` 
    }
    
}
//           <!--INICIO DE OCTAL PARA DECIMAL-->
function ContaOctalDecimal() {
    var calcula_OctDec1 = Number(input_number_OctDec1.value)
    var calcula_OctDec2 = Number(input_number_OctDec2.value)
    var calcula_OctDec3 = Number(input_number_OctDec3.value)
    var calcula_OctDec4 = Number(input_number_OctDec4.value)
    if (calcula_OctDec1 >=0, calcula_OctDec1 <8) {
        var od1 = calcula_OctDec1 * 8 * 8 * 8
    }
    if(calcula_OctDec2 >=0, calcula_OctDec2 <8) {
        var od2 = calcula_OctDec2 * 8 * 8
    }
    if(calcula_OctDec3 >=0, calcula_OctDec3 <8) {
        var od3 = calcula_OctDec3 * 8
    } 
    if(calcula_OctDec4 >=0, calcula_OctDec4 <8) {
        var od4 = calcula_OctDec4
    }
    document.getElementById('OcDe').innerHTML = (od1 + od2 + od3 + od4)

    if (inp_contaOct1.checked == true) {
        document.getElementById('OcDe1').innerHTML = (`8*8*8*${calcula_OctDec1} + 8*8*${calcula_OctDec2} + 8*${calcula_OctDec3} + ${calcula_OctDec4} = ${od1 + od2 + od3 + od4}`)}
    else {
        document.getElementById('OcDe1').innerHTML = ``
    }
    
}
//           <!--INICIO DE OCTAL PARA BINÁRIO-->
function ContaOctalBinario() {
    var calcula_OctBin1 = Number(input_number_OctBin1.value)
    var calcula_OctBin2 = Number(input_number_OctBin2.value)
    var calcula_OctBin3 = Number(input_number_OctBin3.value)
    var calcula_OctBin4 = Number(input_number_OctBin4.value)
    if(calcula_OctBin1 == 0){
        var ob1 = "000"
    } else if (calcula_OctBin1 == 1) {
        var ob1 = "001"
    } else if (calcula_OctBin1 == 2) {
        var ob1 = "010"
    } else if (calcula_OctBin1 == 3) {
        var ob1 = "011"
    } else if (calcula_OctBin1 == 4) {
        var ob1 = "100"
    } else if (calcula_OctBin1 == 5) {
        var ob1 = "101"
    } else if (calcula_OctBin1 == 6) {
        var ob1 = "110"
    } else if (calcula_OctBin1 == 7) {
        var ob1 = "111"
    } else {
        var ob1 = " NaN "
    }
    if(calcula_OctBin2 == 0){
        var ob2 = "000"
    } else if (calcula_OctBin2 == 1) {
        var ob2 = "001"
    } else if (calcula_OctBin2 == 2) {
        var ob2 = "010"
    } else if (calcula_OctBin2 == 3) {
        var ob2 = "011"
    } else if (calcula_OctBin2 == 4) {
        var ob2 = "100"
    } else if (calcula_OctBin2 == 5) {
        var ob2 = "101"
    } else if (calcula_OctBin2 == 6) {
        var ob2 = "110"
    } else if (calcula_OctBin2 == 7) {
        var ob2 = "111"
    } else {
        var ob2 = " NaN "
    }
    if(calcula_OctBin3 == 0){
        var ob3 = "000"
    } else if (calcula_OctBin3 == 1) {
        var ob3 = "001"
    } else if (calcula_OctBin3 == 2) {
        var ob3 = "010"
    } else if (calcula_OctBin3 == 3) {
        var ob3 = "011"
    } else if (calcula_OctBin3 == 4) {
        var ob3 = "100"
    } else if (calcula_OctBin3 == 5) {
        var ob3 = "101"
    } else if (calcula_OctBin3 == 6) {
        var ob3 = "110"
    } else if (calcula_OctBin3 == 7) {
        var ob3 = "111"
    } else {
        var ob3 = " NaN "
    }
    if(calcula_OctBin4 == 0){
        var ob4 = "000"
    } else if (calcula_OctBin4 == 1) {
        var ob4 = "001"
    } else if (calcula_OctBin4 == 2) {
        var ob4 = "010"
    } else if (calcula_OctBin4 == 3) {
        var ob4 = "011"
    } else if (calcula_OctBin4 == 4) {
        var ob4 = "100"
    } else if (calcula_OctBin4 == 5) {
        var ob4 = "101"
    } else if (calcula_OctBin4 == 6) {
        var ob4 = "110"
    } else if (calcula_OctBin4 == 7) {
        var ob4 = "111"
    } else {
        var ob4 = " NaN "
    }
    var geral_OctBin = ob1 + ob2 + ob3 + ob4
    document.getElementById('OcBi').innerHTML = (geral_OctBin)
    if (inp_contaOct2.checked == true) {
        document.getElementById('OcBi1').innerHTML = (`(${calcula_OctBin1} = ${ob1}) + (${calcula_OctBin2} = ${ob2}) + (${calcula_OctBin3} = ${ob3}) + (${calcula_OctBin4} = ${ob4})`)
}
    else {document.getElementById('OcBi1').innerHTML = ``}
}
    
//           <!--INICIO DE OCTAL PARA HEXADECIMAL-->
function ContaOctalHexadecimal() {
    var calcula_OctHex1 = Number(input_number_OctHex1.value)
    var calcula_OctHex2 = Number(input_number_OctHex2.value)
    var calcula_OctHex3 = Number(input_number_OctHex3.value)
    var calcula_OctHex4 = Number(input_number_OctHex4.value)
    if (calcula_OctHex1 >=0, calcula_OctHex1 <8) {
        var oh1c = calcula_OctHex1 * 8 * 8 * 8
    }
    if(calcula_OctHex2 >=0, calcula_OctHex2 <8) {
        var oh2c = calcula_OctHex2 * 8 * 8
    }
    if(calcula_OctHex3 >=0, calcula_OctHex3 <8) {
        var oh3c = calcula_OctHex3 * 8
    }
    if(calcula_OctHex4 >=0, calcula_OctHex4 <8) {
        var oh4c = calcula_OctHex4
    }
    var calcula_OctHex = oh1c + oh2c + oh3c + oh4c
    if (calcula_OctHex >= 32768) {
        var calcula_OctHex15 = calcula_OctHex - 32768
        var oh16 = 8
        var oh16b = 1
    } else {
        var calcula_OctHex15 = calcula_OctHex
        var oh16 = 0
        var oh16b = 0
    }
    if (calcula_OctHex15 >= 16384) {
        var calcula_OctHex14 = calcula_OctHex15 - 16384
        var oh15 = 4
        var oh15b = 1
    } else {
        var calcula_OctHex14 = calcula_OctHex15
        var oh15 = 0
        var oh15b = 0
    }
    if (calcula_OctHex14 >= 8192) {
        var calcula_OctHex13 = calcula_OctHex14 - 8192
        var oh14 = 2
        var oh14b = 1
    } else {
        var calcula_OctHex13 = calcula_OctHex14
        var oh14 = 0
        var oh14b = 0
    }
    if (calcula_OctHex13 >= 4096) {
        var calcula_OctHex12 = calcula_OctHex13 - 4096
        var oh13 = 1
        var oh13b = 1
    } else {
        var calcula_OctHex12 = calcula_OctHex13
        var oh13 = 0
        var oh13b = 0
    }
    if (calcula_OctHex12 >= 2048) {
        var calcula_OctHex11 = calcula_OctHex12 - 2048
        var oh12 = 8
        var oh12b = 1
    } else {
        var calcula_OctHex11 = calcula_OctHex12
        var oh12 = 0
        var oh12b = 0
    }
    if (calcula_OctHex11 >= 1024) {
        var calcula_OctHex10 = calcula_OctHex11 - 1024
        var oh11 = 4
        var oh11b = 1
    } else {
        var oh11 = 0
        var oh11b = 0
        var calcula_OctHex10 = calcula_OctHex11
    }
    if (calcula_OctHex10 >= 512) {
        var calcula_OctHex9 = calcula_OctHex10 - 512
        var oh10 = 2
        var oh10b = 1
    } else {
        var oh10 = 0
        var oh10b = 0
        var calcula_OctHex9 = calcula_OctHex10
    }
    if (calcula_OctHex9 >= 256) {
        var calcula_OctHex8 = calcula_OctHex9 - 256
        var oh9 = 1
        var oh9b = 1
    } else {
        var oh9 = 0
        var oh9b = 0
        var calcula_OctHex8 = calcula_OctHex9
    }
    if (calcula_OctHex8 >= 128) {
        var calcula_OctHex7 = calcula_OctHex8 - 128
        var oh8 = 8
        var oh8b = 1
    } else {
        var oh8 = 0
        var oh8b = 0
        var calcula_OctHex7 = calcula_OctHex8
    }
    if (calcula_OctHex7 >= 64) {
        var calcula_OctHex6 = calcula_OctHex7 - 64
        var oh7 = 4
        var oh7b = 1
    } else {
        var oh7 = 0
        var oh7b = 0
        var calcula_OctHex6 = calcula_OctHex7
    }
    if (calcula_OctHex6 >= 32) {
        var calcula_OctHex5 = calcula_OctHex6 - 32
        var oh6 = 2
        var oh6b = 1
    } else {
        var oh6 = 0
        var oh6b = 0
        var calcula_OctHex5 = calcula_OctHex6
    }
    if (calcula_OctHex5 >= 16) {
        var calcula_OctHex4 = calcula_OctHex5 - 16
        var oh5 = 1
        var oh5b = 1
    } else {
        var oh5 = 0
        var oh5b = 0
        var calcula_OctHex4 = calcula_OctHex5
    }
    if (calcula_OctHex4 >= 8) {
        var calcula_OctHex3 = calcula_OctHex4 - 8
        var oh4 = 8
        var oh4b = 1
    } else {
        var oh4 = 0
        var oh4b = 0
        var calcula_OctHex3 = calcula_OctHex4
    }
    if (calcula_OctHex3 >= 4) {
        var calcula_OctHex2 = calcula_OctHex3 - 4
        var oh3 = 4
        var oh3b = 1
    } else {
        var oh3 = 0
        var oh3b = 0
        var calcula_OctHex2 = calcula_OctHex3
    }
    if (calcula_OctHex2 >= 2) {
        var calcula_OctHex1 = calcula_OctHex2 - 2
        var oh2 = 2
        var oh2b = 1
    } else {
        var oh2 = 0
        var oh2b = 0
        var calcula_OctHex1 = calcula_OctHex2
    }
    if (calcula_OctHex1 >= 1) {
        var oh1 = 1
        var oh1b = 1
        var calcula_OctHex0 = calcula_OctHex1 - 1
    } else {
        var oh1 = 0
        var oh1b = 0
        var calcula_OctHex0 = calcula_OctHex1
    }
    //var transforma_DecHex1 = new Array("A", "B", "C", "D", "E", "F")
    //var transforma_OctHex1 = oh16 + oh15 + oh14 + oh13
    var transforma_OctHex2 = oh12 + oh11 + oh10 + oh9
    var transforma_OctHex3 = oh8 + oh7 + oh6 + oh5
    var transforma_OctHex4 = oh4 + oh3 + oh2 + oh1
    /*if (transforma_OctHex1 == 10) {
     var transforma_OctHex1 = "A"
    } else if (transforma_OctHex1 == 11) {
        var transforma_OctHex1 = "B"
    } else if (transforma_OctHex1 == 12) {
        var transforma_OctHex1 = "C"
    } else if (transforma_OctHex1 == 13) {
        var transforma_OctHex1 = "D"
    } else if (transforma_OctHex1 == 14) {
        var transforma_OctHex1 = "E"
    } else if (transforma_OctHex1 == 15) {
        var transforma_OctHex1 = "F"
    }*/
    if (transforma_OctHex2 == 10) {
     var transforma_OctHex2 = "A"
    } else if (transforma_OctHex2 == 11) {
        var transforma_OctHex2 = "B"
    } else if (transforma_OctHex2 == 12) {
        var transforma_OctHex2 = "C"
    } else if (transforma_OctHex2 == 13) {
        var transforma_OctHex2 = "D"
    } else if (transforma_OctHex2 == 14) {
        var transforma_OctHex2 = "E"
    } else if (transforma_OctHex2 == 15) {
        var transforma_OctHex2 = "F"
    }
    if (transforma_OctHex3 == 10) {
     var transforma_OctHex3 = "A"
    } else if (transforma_OctHex3 == 11) {
        var transforma_OctHex3 = "B"
    } else if (transforma_OctHex3 == 12) {
        var transforma_OctHex3 = "C"
    } else if (transforma_OctHex3 == 13) {
        var transforma_OctHex3 = "D"
    } else if (transforma_OctHex3 == 14) {
        var transforma_OctHex3 = "E"
    } else if (transforma_OctHex3 == 15) {
        var transforma_OctHex3 = "F"
    }
    if (transforma_OctHex4 == 10) {
     var transforma_OctHex4 = "A"
    } else if (transforma_OctHex4 == 11) {
        var transforma_OctHex4 = "B"
    } else if (transforma_OctHex4 == 12) {
        var transforma_OctHex4 = "C"
    } else if (transforma_OctHex4 == 13) {
        var transforma_OctHex4 = "D"
    } else if (transforma_OctHex4 == 14) {
        var transforma_OctHex4 = "E"
    } else if (transforma_OctHex4 == 15) {
        var transforma_OctHex4 = "F"
    }
    var geral_OctHex = (transforma_OctHex2).toString() + (transforma_OctHex3).toString() + (transforma_OctHex4).toString()
    document.getElementById('OcHe').innerHTML = geral_OctHex
    if (inp_contaOct3.checked == true) {
        document.getElementById('OcHe1').innerHTML = (`8*8*8*${calcula_OctHex1} + 8*8*${calcula_OctHex2} + 8*${calcula_OctHex2} + ${calcula_OctHex2} = ${calcula_OctHex}<br>logo<br>${calcula_OctHex} - 32768 = ${calcula_OctHex15} (${oh16b})<br>${calcula_OctHex15} - 16384 = ${calcula_OctHex14} (${oh15b})<br>${calcula_OctHex14} - 8192 = ${calcula_OctHex13} (${oh14b})<br>${calcula_OctHex13} - 4096 = ${calcula_OctHex12} (${oh13b})<br>${calcula_OctHex12} - 2048 = ${calcula_OctHex11} (${oh12b})<br>${calcula_OctHex11} - 1024 = ${calcula_OctHex10} (${oh11b})<br>${calcula_OctHex10} - 512 = ${calcula_OctHex9} (${oh10b})<br>${calcula_OctHex9} - 256 = ${calcula_OctHex8} (${oh9b})<br>${calcula_OctHex8} - 128 = ${calcula_OctHex7} (${oh8b})<br>${calcula_OctHex7} - 64 = ${calcula_OctHex6} (${oh7b})<br>${calcula_OctHex6} - 32 = ${calcula_OctHex5} (${oh6b})<br>${calcula_OctHex5} - 16 = ${calcula_OctHex4} (${oh5b})<br>${calcula_OctHex4} - 8 = ${calcula_OctHex3} (${oh4b})<br>${calcula_OctHex3} - 4 = ${calcula_OctHex2} (${oh3b})<br>${calcula_OctHex2} - 2 = ${calcula_OctHex1} (${oh2b})<br>${calcula_OctHex1} - 1 = ${calcula_OctHex0} (${oh1b})<br>logo<br>(${oh16b}x8 + ${oh15b}x4 + ${oh14b}x2 + ${oh13b}x1) + (${oh12b}x8 + ${oh11b}x4 + ${oh10b}x2 + ${oh9b}x1) + (${oh8b}x8 + ${oh7b}x4 + ${oh6b}x2 + ${oh5b}x1) + (${oh4b}x8 + ${oh3b}x4 + ${oh2b}x2 + ${oh1b}x1) = ${geral_OctHex}`)
    }
    else {
        document.getElementById('OcHe1').innerHTML = ``
    }
    
}
//           <!--INICIO DE HEXADECIMAL PARA DECIMAL-->
function ContaHexadecimalDecimal() {
    var calcula_HexDec1 = input_text_HexDec1.value
    var calcula_HexDec2 = input_text_HexDec2.value
    var calcula_HexDec3 = input_text_HexDec3.value
    var calcula_HexDec4 = input_text_HexDec4.value
    if (calcula_HexDec1 == "A" | calcula_HexDec1 == "a") {
        var hd1 = 16 * 16 * 16 * 10
        var hd1c = 10
    } else if (calcula_HexDec1 == "B" | calcula_HexDec1 == "b") {
        var hd1 = 16 * 16 * 16 * 11
        var hd1c = 11
    } else if (calcula_HexDec1 == "C" | calcula_HexDec1 == "c") {
        var hd1 = 16 * 16 * 16 * 12
        var hd1c = 12
    } else if (calcula_HexDec1 == "D" | calcula_HexDec1 == "d") {
        var hd1 = 16 * 16 * 16 * 13
        var hd1c = 13
    } else if (calcula_HexDec1 == "E" | calcula_HexDec1 == "e") {
        var hd1 = 16 * 16 * 16 * 14
        var hd1c = 14
    } else if (calcula_HexDec1 == "F" | calcula_HexDec1 == "f") {
        var hd1 = 16 * 16 * 16 * 15
        var hd1c = 15
    } else if (calcula_HexDec1 >= 0 | calcula_HexDec1 <10) {
        var hd1 = Number(calcula_HexDec1) * 16 * 16 * 16
        var hd1c = Number(calcula_HexDec1)
    }
    if (calcula_HexDec2 == "A" | calcula_HexDec2 == "a") {
        var hd2 = 16 * 16 * 10
        var hd2c = 10
    } else if (calcula_HexDec2 == "B" | calcula_HexDec2 == "b") {
        var hd2 = 16 * 16 * 11
        var hd2c = 11
    } else if (calcula_HexDec2 == "C" | calcula_HexDec2 == "c") {
        var hd2 = 16 * 16 * 12
        var hd2c = 12
    } else if (calcula_HexDec2 == "D" | calcula_HexDec2 == "d") {
        var hd2 = 16 * 16 * 13
        var hd2c = 13
    } else if (calcula_HexDec2 == "E" | calcula_HexDec2 == "e") {
        var hd2 = 16 * 16 * 14
        var hd2c = 14
    } else if (calcula_HexDec2 == "F" | calcula_HexDec2 == "f") {
        var hd2 = 16 * 16 * 15
        var hd2c = 15
    } else if (calcula_HexDec2 >= 0 | calcula_HexDec2 <10) {
        var hd2 = Number(calcula_HexDec2) * 16 * 16
        var hd2c = Number(calcula_HexDec2)
    }
    if (calcula_HexDec3 == "A" | calcula_HexDec3 == "a") {
        var hd3 = 16 * 10
        var hd3c = 10
    } else if (calcula_HexDec3 == "B" | calcula_HexDec3 == "b") {
        var hd3 = 16 * 11
        var hd3c = 11
    } else if (calcula_HexDec3 == "C" | calcula_HexDec3 == "c") {
        var hd3 = 16 * 12
        var hd3c = 12
    } else if (calcula_HexDec3 == "D" | calcula_HexDec3 == "d") {
        var hd3 = 16 * 13
        var hd3c = 13
    } else if (calcula_HexDec3 == "E" | calcula_HexDec3 == "e") {
        var hd3 = 16 * 14
        var hd3c = 14
    } else if (calcula_HexDec3 == "F" | calcula_HexDec3 == "f") {
        var hd3 = 16 * 15
        var hd3c = 15
    } else if (calcula_HexDec3 >= 0 | calcula_HexDec3 <10) {
        var hd3 = Number(calcula_HexDec3) * 16
        var hd3c = Number(calcula_HexDec3)
    }
    if (calcula_HexDec4 == "A" | calcula_HexDec4 == "a") {
        var hd4 = 10
        var hd4c = 10
    } else if (calcula_HexDec4 == "B" | calcula_HexDec4 == "b") {
        var hd4 = 11
        var hd4c = 11
    } else if (calcula_HexDec4 == "C" | calcula_HexDec4 == "c") {
        var hd4 = 12
        var hd4c = 12
    } else if (calcula_HexDec4 == "D" | calcula_HexDec4 == "d") {
        var hd4 = 13
        var hd4c = 13
    } else if (calcula_HexDec4 == "E" | calcula_HexDec4 == "e") {
        var hd4 = 14
        var hd4c = 14
    } else if (calcula_HexDec4 == "F" | calcula_HexDec4 == "f") {
        var hd4 = 15
        var hd4c = 15
    } else if (calcula_HexDec4 >= 0 | calcula_HexDec4 <10) {
        var hd4 = Number(calcula_HexDec4)
        var hd4c = Number(calcula_HexDec4)
    }
    document.getElementById('HeDe').innerHTML = (hd1 + hd2 + hd3 + hd4)
    if (inp_contaHex1.checked == true) {
        document.getElementById('HeDe1').innerHTML = (`16*1616**${hd1c} + 16*16*${hd2c} + 16*${hd3c} + ${hd4c} = ${hd1 + hd2 + hd3 + hd4}`)
    }
    else {
        document.getElementById('HeDe1').innerHTML = ``
    }
    
}
//           <!--INICIO DE HEXADECIMAL PARA BINÁRIO-->
function ContaHexadecimalBinario() {
    var calcula_HexBin1 = input_text_HexBin1.value
    var calcula_HexBin2 = input_text_HexBin2.value
    var calcula_HexBin3 = input_text_HexBin3.value
    var calcula_HexBin4 = input_text_HexBin4.value
    if(calcula_HexBin1 == 0){
        var hb1 = "0000"
    } else if (calcula_HexBin1 == 1) {
        var hb1 = "0001"
    } else if (calcula_HexBin1 == 2) {
        var hb1 = "0010"
    } else if (calcula_HexBin1 == 3) {
        var hb1 = "0011"
    } else if (calcula_HexBin1 == 4) {
        var hb1 = "0100"
    } else if (calcula_HexBin1 == 5) {
        var hb1 = "0101"
    } else if (calcula_HexBin1 == 6) {
        var hb1 = "0110"
    } else if (calcula_HexBin1 == 7) {
        var hb1 = "0111"
    } else if (calcula_HexBin1 == 8) {
        var hb1 = "1000"
    } else if (calcula_HexBin1 == 9) {
        var hb1 = "1001"
    } else if (calcula_HexBin1 == "A" | calcula_HexBin1 == "a") {
        var hb1 = "1010"
    } else if (calcula_HexBin1 == "B" | calcula_HexBin1 == "b") {
        var hb1 = "1011"
    } else if (calcula_HexBin1 == "C" | calcula_HexBin1 == "c") {
        var hb1 = "1100"
    } else if (calcula_HexBin1 == "D" | calcula_HexBin1 == "d") {
        var hb1 = "1101"
    } else if (calcula_HexBin1 == "E" | calcula_HexBin1 == "e") {
        var hb1 = "1110"
    } else if (calcula_HexBin1 == "F" | calcula_HexBin1 == "f") {
        var hb1 = "1111"
    } else {
        var hb1 = " NaN "
    }
    if(calcula_HexBin2 == 0){
        var hb2 = "0000"
    } else if (calcula_HexBin2 == 1) {
        var hb2 = "0001"
    } else if (calcula_HexBin2 == 2) {
        var hb2 = "0010"
    } else if (calcula_HexBin2 == 3) {
        var hb2 = "0011"
    } else if (calcula_HexBin2 == 4) {
        var hb2 = "0100"
    } else if (calcula_HexBin2 == 5) {
        var hb2 = "0101"
    } else if (calcula_HexBin2 == 6) {
        var hb2 = "0110"
    } else if (calcula_HexBin2 == 7) {
        var hb2 = "0111"
    } else if (calcula_HexBin2 == 8) {
        var hb2 = "1000"
    } else if (calcula_HexBin2 == 9) {
        var hb2 = "1001"
    } else if (calcula_HexBin2 == "A" | calcula_HexBin2 == "a") {
        var hb2 = "1010"
    } else if (calcula_HexBin2 == "B" | calcula_HexBin2 == "b") {
        var hb2 = "1011"
    } else if (calcula_HexBin2 == "C" | calcula_HexBin2 == "c") {
        var hb2 = "1100"
    } else if (calcula_HexBin2 == "D" | calcula_HexBin2 == "d") {
        var hb2 = "1101"
    } else if (calcula_HexBin2 == "E" | calcula_HexBin2 == "e") {
        var hb2 = "1110"
    } else if (calcula_HexBin2 == "F" | calcula_HexBin2 == "f") {
        var hb2 = "1111"
    } else {
        var hb2 = " NaN "
    }
    if(calcula_HexBin3 == 0){
        var hb3 = "0000"
    } else if (calcula_HexBin3 == 1) {
        var hb3 = "0001"
    } else if (calcula_HexBin3 == 2) {
        var hb3 = "0010"
    } else if (calcula_HexBin3 == 3) {
        var hb3 = "0011"
    } else if (calcula_HexBin3 == 4) {
        var hb3 = "0100"
    } else if (calcula_HexBin3 == 5) {
        var hb3 = "0101"
    } else if (calcula_HexBin3 == 6) {
        var hb3 = "0110"
    } else if (calcula_HexBin3 == 7) {
        var hb3 = "0111"
    } else if (calcula_HexBin3 == 8) {
        var hb3 = "1000"
    } else if (calcula_HexBin3 == 9) {
        var hb3 = "1001"
    } else if (calcula_HexBin3 == "A" | calcula_HexBin3 == "a") {
        var hb3 = "1010"
    } else if (calcula_HexBin3 == "B" | calcula_HexBin3 == "b") {
        var hb3 = "1011"
    } else if (calcula_HexBin3 == "C" | calcula_HexBin3 == "c") {
        var hb3 = "1100"
    } else if (calcula_HexBin3 == "D" | calcula_HexBin3 == "d") {
        var hb3 = "1101"
    } else if (calcula_HexBin3 == "E" | calcula_HexBin3 == "e") {
        var hb3 = "1110"
    } else if (calcula_HexBin3 == "F" | calcula_HexBin3 == "f") {
        var hb3 = "1111"
    } else {
        var hb3 = " NaN "
    }
    if(calcula_HexBin4 == 0){
        var hb4 = "0000"
    } else if(calcula_HexBin4 == 1){
        var hb4 = "0001"
    } else if (calcula_HexBin4 == 2) {
        var hb4 = "0010"
    } else if (calcula_HexBin4 == 3) {
        var hb4 = "0011"
    } else if (calcula_HexBin4 == 4) {
        var hb4 = "0100"
    } else if (calcula_HexBin4 == 5) {
        var hb4 = "0101"
    } else if (calcula_HexBin4 == 6) {
        var hb4 = "0110"
    } else if (calcula_HexBin4 == 7) {
        var hb4 = "0111"
    } else if (calcula_HexBin4 == 8) {
        var hb4 = "1000"
    } else if (calcula_HexBin4 == 9) {
        var hb4 = "1001"
    } else if (calcula_HexBin4 == "A" | calcula_HexBin4 == "a") {
        var hb4 = "1010"
    } else if (calcula_HexBin4 == "B" | calcula_HexBin4 == "b") {
        var hb4 = "1011"
    } else if (calcula_HexBin4 == "C" | calcula_HexBin4 == "c") {
        var hb4 = "1100"
    } else if (calcula_HexBin4 == "D" | calcula_HexBin4 == "d") {
        var hb4 = "1101"
    } else if (calcula_HexBin4 == "E" | calcula_HexBin4 == "e") {
        var hb4 = "1110"
    } else if (calcula_HexBin4 == "F" | calcula_HexBin4 == "f") {
        var hb4 = "1111"
    } else {
        var hb4 = " NaN "
    }
    var geral_HexBin = hb1 + hb2 + hb3 + hb4
    if (inp_contaHex2.checked == true) {
        document.getElementById('HeBi1').innerHTML = (`(${calcula_HexBin1} = ${hb1}) + (${calcula_HexBin2} = ${hb2}) + (${calcula_HexBin3} = ${hb3}) + (${calcula_HexBin4} = ${hb4})`)
    }
    else {document.getElementById('HeBi1').innerHTML = ``}
    
    document.getElementById('HeBi').innerHTML = (geral_HexBin)
}
//           <!--INICIO DE HEXADECIMAL PARA OCTAL-->
function ContaHexadecimalOctal() {
    var calcula_HexOct1 = input_text_HexOct1.value
    var calcula_HexOct2 = input_text_HexOct2.value
    var calcula_HexOct3 = input_text_HexOct3.value
    var calcula_HexOct4 = input_text_HexOct4.value
    if (calcula_HexOct1 == "A" | calcula_HexOct1 == "a") {
        var ho1b = 16 * 16 * 16 * 10
    } else if (calcula_HexOct1 == "B" | calcula_HexOct1 == "b") {
        var ho1b = 16 * 16 * 16 * 11
    } else if (calcula_HexOct1 == "C" | calcula_HexOct1 == "c") {
        var ho1b = 16 * 16 * 16 * 12
    } else if (calcula_HexOct1 == "D" | calcula_HexOct1 == "d") {
        var ho1b = 16 * 16 * 16 * 13
    } else if (calcula_HexOct1 == "E" | calcula_HexOct1 == "e") {
        var ho1b = 16 * 16 * 16 * 14
    } else if (calcula_HexOct1 == "F" | calcula_HexOct1 == "f") {
        var ho1b = 16 * 16 * 16 * 15
    } else if (calcula_HexOct1 >= 0 | calcula_HexOct1 <10) {
        var ho1b = Number(calcula_HexOct1) * 16 * 16 * 16
    }
    if (calcula_HexOct2 == "A" | calcula_HexOct2 == "a") {
        var ho2b = 16 * 16 * 10
    } else if (calcula_HexOct2 == "B" | calcula_HexOct2 == "b") {
        var ho2b = 16 * 16 * 11
    } else if (calcula_HexOct2 == "C" | calcula_HexOct2 == "c") {
        var ho2b = 16 * 16 * 12
    } else if (calcula_HexOct2 == "D" | calcula_HexOct2 == "d") {
        var ho2b = 16 * 16 * 13
    } else if (calcula_HexOct2 == "E" | calcula_HexOct2 == "e") {
        var ho2b = 16 * 16 * 14
    } else if (calcula_HexOct2 == "F" | calcula_HexOct2 == "f") {
        var ho2b = 16 * 16 * 15
    } else if (calcula_HexOct2 >= 0 | calcula_HexOct2 <10) {
        var ho2b = Number(calcula_HexOct2) * 16 * 16
    }
    if (calcula_HexOct3 == "A" | calcula_HexOct3 == "a") {
        var ho3b = 16 * 10
    } else if (calcula_HexOct3 == "B" | calcula_HexOct3 == "b") {
        var ho3b = 16 * 11
    } else if (calcula_HexOct3 == "C" | calcula_HexOct3 == "c") {
        var ho3b = 16 * 12
    } else if (calcula_HexOct3 == "D" | calcula_HexOct3 == "d") {
        var ho3b = 16 * 13
    } else if (calcula_HexOct3 == "E" | calcula_HexOct3 == "e") {
        var ho3b = 16 * 14
    } else if (calcula_HexOct3 == "F" | calcula_HexOct3 == "f") {
        var ho3b = 16 * 15
    } else if (calcula_HexOct3 >= 0 | calcula_HexOct3 <10) {
        var ho3b = Number(calcula_HexOct3) * 16
    }
    if (calcula_HexOct4 == "A" | calcula_HexOct4 == "a") {
        var ho4b = 10
    } else if (calcula_HexOct4 == "B" | calcula_HexOct4 == "b") {
        var ho4b = 11
    } else if (calcula_HexOct4 == "C" | calcula_HexOct4 == "c") {
        var ho4b = 12
    } else if (calcula_HexOct4 == "D" | calcula_HexOct4 == "d") {
        var ho4b = 13
    } else if (calcula_HexOct4 == "E" | calcula_HexOct4 == "e") {
        var ho4b = 14
    } else if (calcula_HexOct4 == "F" | calcula_HexOct4 == "f") {
        var ho4b = 15
    } else if (calcula_HexOct4 >= 0 | calcula_HexOct4 <10) {
        var ho4b = Number(calcula_HexOct4)
    }
    var calcula_HexOct = ho1b + ho2b + ho3b + ho4b
    if (calcula_HexOct >= 32768) {
        var calcula_HexOct15 = calcula_HexOct - 32768
        var ho16 = 1
        var ho16c = 1
    } else {
        var calcula_HexOct15 = calcula_HexOct
        var ho16 = 0
        var ho16c = 0
    }
    if (calcula_HexOct15 >= 16384) {
        var calcula_HexOct14 = calcula_HexOct15 - 16384
        var ho15 = 4
        var ho15c = 1
    } else {
        var calcula_HexOct14 = calcula_HexOct15
        var ho15 = 0
        var ho15c = 0
    }
    if (calcula_HexOct14 >= 8192) {
        var calcula_HexOct13 = calcula_HexOct14 - 8192
        var ho14 = 2
        var ho14c = 1
    } else {
        var calcula_HexOct13 = calcula_HexOct14
        var ho14 = 0
        var ho14c = 0
    }
    if (calcula_HexOct13 >= 4096) {
        var calcula_HexOct12 = calcula_HexOct13 - 4096
        var ho13 = 1
        var ho13c = 1
    } else {
        var calcula_HexOct12 = calcula_HexOct13
        var ho13 = 0
        var ho13c = 0
    }
    if (calcula_HexOct12 >= 2048) {
        var calcula_HexOct11 = calcula_HexOct12 - 2048
        var ho12 = 4
        var ho12c = 1
    } else {
        var calcula_HexOct11 = calcula_HexOct12
        var ho12 = 0
        var ho12c = 0
    }
    if (calcula_HexOct11 >= 1024) {
        var calcula_HexOct10 = calcula_HexOct11 - 1024
        var ho11 = 2
        var ho11c = 1
    } else {
        var ho11 = 0
        var ho11c = 0
        var calcula_HexOct10 = calcula_HexOct11
    }
    if (calcula_HexOct10 >= 512) {
        var calcula_HexOct9 = calcula_HexOct10 - 512
        var ho10 = 1
        var ho10c = 1
    } else {
        var ho10 = 0
        var ho10c = 0
        var calcula_HexOct9 = calcula_HexOct10
    }
    if (calcula_HexOct9 >= 256) {
        var calcula_HexOct8 = calcula_HexOct9 - 256
        var ho9 = 4
        var ho9c = 1
    } else {
        var ho9 = 0
        var ho9c = 0
        var calcula_HexOct8 = calcula_HexOct9
    }
    if (calcula_HexOct8 >= 128) {
        var calcula_HexOct7 = calcula_HexOct8 - 128
        var ho8 = 2
        var ho8c = 1
    } else {
        var ho8 = 0
        var ho8c = 0
        var calcula_HexOct7 = calcula_HexOct8
    }
    if (calcula_HexOct7 >= 64) {
        var calcula_HexOct6 = calcula_HexOct7 - 64
        var ho7 = 1
        var ho7c = 1
    } else {
        var ho7 = 0
        var ho7c = 0
        var calcula_HexOct6 = calcula_HexOct7
    }
    if (calcula_HexOct6 >= 32) {
        var calcula_HexOct5 = calcula_HexOct6 - 32
        var ho6 = 4
        var ho6c = 1
    } else {
        var ho6 = 0
        var ho6c = 0
        var calcula_HexOct5 = calcula_HexOct6
    }
    if (calcula_HexOct5 >= 16) {
        var calcula_HexOct4 = calcula_HexOct5 - 16
        var ho5 = 2
        var ho5c = 1
    } else {
        var ho5 = 0
        var ho5c = 0
        var calcula_HexOct4 = calcula_HexOct5
    }
    if (calcula_HexOct4 >= 8) {
        var calcula_HexOct3 = calcula_HexOct4 - 8
        var ho4 = 1
        var ho4c = 1
    } else {
        var ho4 = 0
        var ho4c = 0
        var calcula_HexOct3 = calcula_HexOct4
    }
    if (calcula_HexOct3 >= 4) {
        var calcula_HexOct2 = calcula_HexOct3 - 4
        var ho3 = 4
        var ho3c = 1
    } else {
        var ho3 = 0
        var ho3c = 0
        var calcula_HexOct2 = calcula_HexOct3
    }
    if (calcula_HexOct2 >= 2) {
        var calcula_HexOct1 = calcula_HexOct2 - 2
        var ho2 = 2
        var ho2c = 1
    } else {
        var ho2 = 0
        var ho2c = 0
        var calcula_HexOct1 = calcula_HexOct2
    }
    if (calcula_HexOct1 >= 1) {
        var ho1 = 1
        var ho1c = 1
        var calcula_HexOct0 = calcula_HexOct1 - 1
    } else {
        var ho1 = 0
        var ho1c = 0
        var calcula_HexOct0 = calcula_HexOct1
    }
    var geral_HexOct = ho16.toString() + (ho15 + ho14 + ho13).toString() + (ho12 + ho11 + ho10).toString() + (ho9 + ho8 + ho7).toString() + (ho6 + ho5 + ho4).toString() + (ho3 + ho2 + ho1).toString()
    document.getElementById('HeOc').innerHTML = geral_HexOct

    if (inp_contaHex3.checked == true) {
        document.getElementById('HeOc1').innerHTML = (`16*16*16*${ho1b} + 16*16*${ho4b} + 16*${ho4b} + ${ho4b} = ${calcula_HexOct}<br>logo<br>${calcula_HexOct} - 32768 = ${calcula_HexOct15} (${ho16c})<br>${calcula_HexOct15} - 16384 = ${calcula_HexOct14} (${ho15c})<br>${calcula_HexOct14} - 8192 = ${calcula_HexOct13} (${ho14c})<br>${calcula_HexOct13} - 4096 = ${calcula_HexOct12} (${ho13c})<br>${calcula_HexOct12} - 2048 = ${calcula_HexOct11} (${ho12c})<br>${calcula_HexOct11} - 1024 = ${calcula_HexOct10} (${ho11c})<br>${calcula_HexOct10} - 512 = ${calcula_HexOct9} (${ho10c})<br>${calcula_HexOct9} - 256 = ${calcula_HexOct8} (${ho9c})<br>${calcula_HexOct8} - 128 = ${calcula_HexOct7} (${ho8c})<br>${calcula_HexOct7} - 64 = ${calcula_HexOct6} (${ho7c})<br>${calcula_HexOct6} - 32 = ${calcula_HexOct5} (${ho6c})<br>${calcula_HexOct5} - 16 = ${calcula_HexOct4} (${ho5c})<br>${calcula_HexOct4} - 8 = ${calcula_HexOct3} (${ho4c})<br>${calcula_HexOct3} - 4 = ${calcula_HexOct2} (${ho3c})<br>${calcula_HexOct2} - 2 = ${calcula_HexOct1} (${ho2c})<br>${calcula_HexOct1} - 1 = ${calcula_HexOct0} (${ho1c})<br>logo<br>(${ho16c}x1) + (${ho15c}x4 + ${ho14c}x2 + ${ho13c}x1) + (${ho12c}x4 + ${ho11c}x2 + ${ho10c}x1) + (${ho9c}x4 + ${ho8c}x2 + ${ho7c}x1) + (${ho6c}x4 + ${ho5c}x2 + ${ho4c}x1) + (${ho3c}x4 + ${ho2c}x2 + ${ho1c}x1) = ${geral_HexOct}`)
}
    else {document.getElementById('HeOc1').innerHTML = ``}
    
}


function getRandomInt(min, max) {
    min = Math.ceil(0);
    max = Math.floor(1);
    number1 = Math.floor(Math.random() * 2).toString()
    number2 = Math.floor(Math.random() * 2).toString()
    number3 = Math.floor(Math.random() * 2).toString()
    number4 = Math.floor(Math.random() * 2).toString()
    number5 = Math.floor(Math.random() * 2).toString()
    number6 = Math.floor(Math.random() * 2).toString()
    number7 = Math.floor(Math.random() * 2).toString()
    number8 = Math.floor(Math.random() * 2).toString()
    number9 = Math.floor(Math.random() * 2).toString()
    number10 = Math.floor(Math.random() * 2).toString()
    number11 = Math.floor(Math.random() * 2).toString()
    number12 = Math.floor(Math.random() * 2).toString()
    number13 = Math.floor(Math.random() * 2).toString()
    number14 = Math.floor(Math.random() * 2).toString()
    number15 = Math.floor(Math.random() * 2).toString()
    number16 = Math.floor(Math.random() * 2).toString()

    var exbd1 = number4 + number3 + number2 + number1
    document.getElementById('ExUm').innerHTML = `${exbd1}<input type="checkbox" id="verifica_Exbd1">`
    var exbd2 = number8 + number7 + number6 + number5 + number4 + number3 + number2 + number1
    document.getElementById('ExDois').innerHTML = `${exbd2}<input type="checkbox" id="verifica_Exbd2">`
    var exbd3 = number12 + number11 + number10 + number9 + number8 + number7 + number6 + number5 + number4 + number3 + number2 + number1
    document.getElementById('ExTres').innerHTML = `${exbd3}<input type="checkbox" id="verifica_Exbd3">`
    var exbd4 = number16 + number15 + number14 + number13 + number12 + number11 + number10 + number9 + number8 + number7 + number6 + number5 + number4 + number3 + number2 + number1
    document.getElementById('ExQuatro').innerHTML = `${exbd4}<input type="checkbox" id="verifica_Exbd4">`
            /*Binário para Decimal*/
            if (number1 == 1) {
                var bd1 = 1
            } else {
                var bd1 = 0
            }
            if (number2 == 1) {
                var bd2 = 2
            } else {
                var bd2 = 0
            }
            if (number3 == 1) {
                var bd3 = 4
            } else {
                var bd3 = 0
            }
            if (number4 == 1) {
                var bd4 = 8
            } else {
                var bd4 = 0
            }
            if (number5 == 1) {
                var bd5 = 16
            } else {
                var bd5 = 0
            }
            if (number6 == 1) {
                var bd6 = 32
            } else {
                var bd6 = 0
            }
            if (number7 == 1) {
                var bd7 = 64
            } else {
                var bd7 = 0
            }
            if (number8 == 1) {
                var bd8 = 128
            } else {
                var bd8 = 0
            }
            if (number9 == 1) {
                var bd9 = 256
            } else {
                var bd9 = 0
            }
            if (number10 == 1) {
                var bd10 = 512
            } else {
                var bd10 = 0
            }
            if (number11 == 1) {
                var bd11= 1024
            } else {
                var bd11 = 0
            }
            if (number12 == 1) {
                var bd12 = 2048
            } else {
                var bd12 = 0
            }
            if (number13 == 1) {
                var bd13 = 4096
            } else {
                var bd13 = 0
            }
            if (number14 == 1) {
                var bd14 = 8192
            } else {
                var bd14 = 0
            }
            if (number15 == 1) {
                var bd15 = 16384
            } else {
                var bd15 = 0
            }
            if (number16 == 1) {
                var bd16 = 32768
            } else {
                var bd16 = 0
            }
            var geral_BinDec_Ex1 = (bd1 + bd2 + bd3 + bd4)
            var geral_BinDec_Ex2 = (bd1 + bd2 + bd3 + bd4 + bd5 + bd6 + bd7 + bd8)
            var geral_BinDec_Ex3 = (bd1 + bd2 + bd3 + bd4 + bd5 + bd6 + bd7 + bd8 + bd9 + bd10 + bd11 + bd12)
            var geral_BinDec_Ex4 = (bd1 + bd2 + bd3 + bd4 + bd5 + bd6 + bd7 + bd8 + bd9 + bd10 + bd11 + bd12 + bd13 + bd14 + bd15 + bd16)
            mensagem_ExUm1.value = geral_BinDec_Ex1
            mensagem_ExUm2.value = geral_BinDec_Ex2
            mensagem_ExUm3.value = geral_BinDec_Ex3
            mensagem_ExUm4.value = geral_BinDec_Ex4
}
function Verificar_BinDec() {
    var ExIchi = mensagem_ExUm1.value
    var ExNi = mensagem_ExUm2.value
    var ExSan = mensagem_ExUm3.value
    var ExYon = mensagem_ExUm4.value
    var ExOne = input_ex1.value
    var verifica_ExUmbd = document.getElementById("verifica_Exbd1");
    var verifica_ExDoisbd = document.getElementById("verifica_Exbd2");
    var verifica_ExTresbd = document.getElementById("verifica_Exbd3");
    var verifica_ExQuatrobd = document.getElementById("verifica_Exbd4");
    document.getElementById('mensagem_ExUm').innerHTML = ``
    document.getElementById('mensagem_ExDois').innerHTML = ``
    document.getElementById('mensagem_ExTres').innerHTML = ``
    document.getElementById('mensagem_ExQuatro').innerHTML = ``
    if (verifica_ExUmbd.checked == true) {
        if (ExIchi == ExOne) {
            document.getElementById('mensagem_ExUm').innerHTML = `O resultado é ${ExIchi}!`
            document.getElementById('mensagem_ExUm').innerHTML += `<p>Parabéns você acertou!</p>`
        } else {
            document.getElementById('mensagem_ExUm').innerHTML = `O resultado é ${ExIchi}!`
            document.getElementById('mensagem_ExUm').innerHTML += `<p>Precisa estudar mais!</p>`
        }
    }
    if (verifica_ExDoisbd.checked == true) {
        if (ExNi == ExOne) {
            document.getElementById('mensagem_ExDois').innerHTML = `O resultado é ${ExNi}!`
            document.getElementById('mensagem_ExDois').innerHTML += `<p>Parabéns você acertou!</p>`
        } else {
            document.getElementById('mensagem_ExDois').innerHTML = `O resultado é ${ExNi}!`
            document.getElementById('mensagem_ExDois').innerHTML += `<p>Precisa estudar mais!</p>`
        }
    }
    if (verifica_ExTresbd.checked == true) {
        if (ExSan == ExOne) {
            document.getElementById('mensagem_ExTres').innerHTML = `O resultado é ${ExSan}!`
            document.getElementById('mensagem_ExTres').innerHTML += `<p>Parabéns você acertou!</p>`
        } else {
            document.getElementById('mensagem_ExTres').innerHTML = `O resultado é ${ExSan}!`
            document.getElementById('mensagem_ExTres').innerHTML += `<p>Precisa estudar mais!</p>`
        }
    }
    if (verifica_ExQuatrobd.checked == true) {
        if (ExYon == ExOne) {
            document.getElementById('mensagem_ExQuatro').innerHTML = `O resultado é ${ExYon}!`
            document.getElementById('mensagem_ExQuatro').innerHTML += `<p>Parabéns você acertou!</p>`
        } else {
            document.getElementById('mensagem_ExQuatro').innerHTML = `O resultado é ${ExYon}!`
            document.getElementById('mensagem_ExQuatro').innerHTML += `<p>Precisa estudar mais!</p>`
        }
    }
}
