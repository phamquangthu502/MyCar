<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý thuê xe ô tô</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="../../vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="../../css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../../images/favicon.png" />
<%@include file="../../../header.jsp"%>
<style type="text/css">
	body {
		background: rgb(204, 204, 204);
	}

	page {
		background: white;
		display: block;
		margin: 0 auto;
		margin-bottom: 0.5cm;
		box-shadow: 0 0 0.5cm rgba(0, 0, 0, 0.5);
	}

	page[size="A4"] {
		width: 21cm;
		height: 29.7cm;
	}

	page[size="A4"][layout="landscape"] {
		width: 29.7cm;
		height: 21cm;
	}

/* h2 {
	text-align: center;
	padding: 20px;
} */
	@media print {
		body, page {
			margin: 0;
			box-shadow: 0;
		}
		.btn{
	        display: none !important;
	    }
	   
		
	}
	@media print {
	  @page { margin: 0; }
	  body { margin: 1.6cm; }
	}
</style>
</head>
<body>
	<%
		HDongDoitacChoThue hd = (HDongDoitacChoThue) session.getAttribute("hdong1");
	%>
	<page size="A4">
	<div class="WordSection1" style="padding: 10px;">

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>
			<b>C&#7896;NG HÒA XÃ H&#7896;I CH&#7910; NGH&#296;A VI&#7878;T
				NAM</b>
		</p>

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>
			<b>&#272;&#7897;c l&#7853;p – T&#7921; do – H&#7841;nh phúc</b>
		</p>

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>&nbsp;</p>

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>
			<b>H&#7906;P &#272;&#7890;NG THUÊ XE&nbsp;</b>
		</p>

		<p class="MsoNormal" style='text-align: justify'>
			<i>&nbsp;&nbsp;&nbsp;&nbsp; Hôm nay, ngày .... tháng ....
				n&#259;m ......., t&#7841;i
				..........................................., chúng tôi g&#7891;m:</i>
		</p>

		<p class="MsoNormal" style='text-align: justify'>
			<b><u>BÊN CHO THUÊ&nbsp;</u></b><i>(sau &#273;ây g&#7885;i là<b>&nbsp;Bên
					A</b>) &nbsp;
			</i>
		</p>

		<p class=MsoNormal style='text-align: justify'>Ông (bà):
			........................................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Sinh n&#259;m: .................</p>

		<p class=MsoNormal style='text-align: justify'>CMND/CCCD/H&#7897;
			chi&#7871;u s&#7889;: .................... do ................
			c&#7845;p ngày ....................</p>

		<p class=MsoNormal style='text-align: justify'>H&#7897; kh&#7849;u
			th&#432;&#7901;ng trú t&#7841;i:
			...................................................................................</p>
		<p class=MsoNormal style='text-align: justify'>
			<b><u>BÊN THUÊ</u></b>&nbsp;<i>(Sau &#273;ây g&#7885;i t&#7855;t
				là&nbsp;<b>Bên&nbsp;B</b>)
			</i>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>CỬA HÀNG THUÊ XE Ô TÔ THUPQ</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>Địa chỉ: số 233 -
			Giáp Nhất - Q.Thanh Xuân - TP.Hà Nội</p>

		<p class=MsoNormal style='text-align: justify'>
			<i>Hai bên &#273;ã th&#7887;a thu&#7853;n và th&#7889;ng
				nh&#7845;t ký k&#7871;t H&#7907;p &#273;&#7891;ng thuê xe ôtô
				v&#7899;i nh&#7919;ng &#273;i&#7873;u kho&#7843;n c&#7909; th&#7875;
				nh&#432; sau:</i>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 1</b>.&nbsp;<b>&#272;&#7863;c &#273;i&#7875;m
				và th&#7887;a thu&#7853;n thuê xe</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>B&#7857;ng
			h&#7907;p &#273;&#7891;ng này, Bên A &#273;&#7891;ng ý cho Bên B thuê
			và bên B &#273;&#7891;ng ý thuê xe ô tô có &#273;&#7863;c
			&#273;i&#7875;m sau &#273;ây:</p>

		<p class=MsoNormal style='text-align: justify'>Nhãn
			hi&#7879;u&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
			………………………&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S&#7889;
			lo&#7841;i:&nbsp; ………………</p>

		<p class=MsoNormal style='text-align: justify'>Lo&#7841;i xe
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
			……………….&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Màu S&#417;n: …………………</p>

		<p class=MsoNormal style='text-align: justify'>S&#7889;
			máy&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
			……………….&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			S&#7889; khung: ……………………..</p>

		<p class=MsoNormal style='text-align: justify'>S&#7889; ch&#7895;
			ng&#7891;i&nbsp;&nbsp; :
			………………&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#272;&#259;ng ký xe có giá
			tr&#7883; &#273;&#7871;n ngày: ………………..</p>

		<p class=MsoNormal style='text-align: justify'>Xe ô tô có
			bi&#7875;n s&#7889; ………… theo gi&#7845;y &#273;&#259;ng ký ô tô
			s&#7889; ……… do …………….. c&#7845;p ngày ………… &#273;&#259;ng ký
			l&#7847;n &#273;&#7847;u ngày ………. &#273;&#432;&#7907;c mang
			tên………….. t&#7841;i &#273;&#7883;a ch&#7881;: …………</p>

		<p class=MsoNormal style='text-align: justify'>
			Gi&#7845;y ch&#7913;ng nh&#7853;n ki&#7875;m &#273;&#7883;nh
			s&#7889;&nbsp;<b>……………</b>&nbsp;do Trung tâm &#273;&#259;ng
			ki&#7875;m xe c&#417; gi&#7899;i s&#7889; ……….., C&#7909;c
			&#273;&#259;ng ki&#7875;m Vi&#7879;t Nam c&#7845;p ngày …………………
		</p>

		<p class=MsoNormal style='text-align: justify'>- Bên A cam
			&#273;oan tr&#432;&#7899;c khi ký b&#7843;n H&#7907;p &#273;&#7891;ng
			này, xe ô tô nêu trên:</p>

		<p class=MsoNormal style='text-align: justify'>&nbsp;+ Không có
			tranh ch&#7845;p v&#7873; quy&#7873;n s&#7903; h&#7919;u/s&#7917;
			d&#7909;ng;</p>

		<p class=MsoNormal style='text-align: justify'>&nbsp;+ Không
			b&#7883; ràng bu&#7897;c b&#7903;i b&#7845;t k&#7923; H&#7907;p
			&#273;&#7891;ng thuê xe ô tô nào &#273;ang có hi&#7879;u l&#7921;c.</p>

		<p class=MsoNormal style='text-align: justify'>- Bên B cam
			&#273;oan: Bên B &#273;&#432;&#7907;c c&#7845;p gi&#7845;y phép lái
			xe h&#7841;ng ….. s&#7889; ………….. có giá tr&#7883; &#273;&#7871;n
			ngày …………………….. (n&#7871;u bên B v&#7899;i t&#432; cách cá nhân)</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 2. Th&#7901;i h&#7841;n thuê xe ô tô</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>&nbsp;&nbsp;
			Th&#7901;i h&#7841;n thuê là …… (………..) tháng k&#7875; t&#7915; ngày
			H&#7907;p &#273;&#7891;ng này &#273;&#432;&#7907;c ký k&#7871;t</p>


		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 4: Giá thuê và ph&#432;&#417;ng th&#7913;c
				thanh toán</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			1. Giá thuê tài s&#7843;n nêu trên là:&nbsp;<b>……………….VN&#272;/………….</b>&nbsp;(<i>B&#7857;ng
				ch&#7919;: ……….. &#273;&#7891;ng trên m&#7897;t ………….)</i>.
		</p>

		<p class=MsoNormal style='text-align: justify'>2. Ph&#432;&#417;ng
			th&#7913;c thanh toán: Thanh toán b&#7857;ng ………………… và Bên B
			ph&#7843;i thanh toán cho Bên A s&#7889; ti&#7873;n thuê xe ô tô nêu
			trên vào ngày …………………...</p>

		<p class=MsoNormal style='text-align: justify'>3. Vi&#7879;c giao
			và nh&#7853;n s&#7889; ti&#7873;n nêu trên do hai bên t&#7921;
			th&#7921;c hi&#7879;n và ch&#7883;u trách nhi&#7879;m
			tr&#432;&#7899;c pháp lu&#7853;t.</p>
	</div>
	</page>



	<page size="A4" style="margin-top:20px;">
	<div class="WordSection1" style="padding: 20px 10px;">
		<p class=MsoNormal>&#272;i&#7873;u 5: Ph&#432;&#417;ng th&#7913;c
			giao, tr&#7843; l&#7841;i tài s&#7843;n thuê</p>

		<p class=MsoNormal style='text-align: justify'>H&#7871;t
			th&#7901;i h&#7841;n thuê nêu trên, Bên B ph&#7843;i giao tr&#7843;
			chi&#7871;c xe ô tô trên cho Bên A.</p>

		<p class=MsoNormal>&#272;i&#7873;u 6: Ngh&#297;a v&#7909; và
			quy&#7873;n c&#7911;a Bên A</p>

		<p class=MsoNormal style='text-align: justify'>
			<b><i>1. Bên A có các ngh&#297;a v&#7909; sau &#273;ây:</i></b>
		</p>

		<p class=MsoNormal style='text-align: justify'>a) Chuy&#7875;n
			giao tài s&#7843;n cho thuê &#273;úng th&#7887;a thu&#7853;n ghi
			trong H&#7907;p &#273;&#7891;ng;</p>

		<p class=MsoNormal style='text-align: justify'>b) B&#7843;o
			&#273;&#7843;m giá tr&#7883; s&#7917; d&#7909;ng c&#7911;a tài
			s&#7843;n cho thuê;</p>

		<p class=MsoNormal style='text-align: justify'>c) B&#7843;o
			&#273;&#7843;m quy&#7873;n s&#7917; d&#7909;ng tài s&#7843;n cho Bên
			B;</p>

		<p class=MsoNormal style='text-align: justify'>
			<b><i>2. Bên A có quy&#7873;n sau &#273;ây:</i></b>
		</p>

		<p class=MsoNormal style='text-align: justify'>a) Nh&#7853;n
			&#273;&#7911; ti&#7873;n thuê tài s&#7843;n theo ph&#432;&#417;ng
			th&#7913;c &#273;ã th&#7887;a thu&#7853;n;</p>

		<p class=MsoNormal style='text-align: justify'>b) Nh&#7853;n
			l&#7841;i tài s&#7843;n thuê khi h&#7871;t h&#7841;n H&#7907;p
			&#273;&#7891;ng;</p>

		<p class=MsoNormal style='text-align: justify'>c) &#272;&#417;n
			ph&#432;&#417;ng &#273;ình ch&#7881; th&#7921;c hi&#7879;n H&#7907;p
			&#273;&#7891;ng và yêu c&#7847;u b&#7891;i th&#432;&#7901;ng
			thi&#7879;t h&#7841;i n&#7871;u Bên B có m&#7897;t trong các hành vi
			sau &#273;ây:</p>

		<p class=MsoNormal style='text-align: justify'>- Không tr&#7843;
			ti&#7873;n thuê trong ……. tháng liên ti&#7871;p;</p>

		<p class=MsoNormal style='text-align: justify'>- S&#7917;
			d&#7909;ng tài s&#7843;n thuê không &#273;úng công d&#7909;ng;
			m&#7909;c &#273;ích c&#7911;a tài s&#7843;n;</p>

		<p class=MsoNormal style='text-align: justify'>- Làm tài s&#7843;n
			thuê m&#7845;t mát, h&#432; h&#7887;ng;</p>

		<p class=MsoNormal style='text-align: justify'>- S&#7917;a
			ch&#7919;a, &#273;&#7893;i ho&#7863;c cho ng&#432;&#7901;i khác thuê
			l&#7841;i mà không có s&#7921; &#273;&#7891;ng ý c&#7911;a Bên A;</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 7: Ngh&#297;a v&#7909; và quy&#7873;n
				c&#7911;a Bên B</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<b><i>1. Bên B có các ngh&#297;a v&#7909; sau &#273;ây:</i></b>
		</p>

		<p class=MsoNormal style='text-align: justify'>a) B&#7843;o
			qu&#7843;n tài s&#7843;n thuê nh&#432; tài s&#7843;n c&#7911;a chính
			mình, không &#273;&#432;&#7907;c thay &#273;&#7893;i tình tr&#7841;ng
			tài s&#7843;n, kông &#273;&#432;&#7907;c cho thuê l&#7841;i tài
			s&#7843;n n&#7871;u không có s&#7921; &#273;&#7891;ng ý c&#7911;a Bên
			A;</p>

		<p class=MsoNormal style='text-align: justify'>b) S&#7917;
			d&#7909;ng tài s&#7843;n thuê &#273;úng công d&#7909;ng, m&#7909;c
			&#273;ích c&#7911;a tài s&#7843;n;</p>

		<p class=MsoNormal style='text-align: justify'>c) Tr&#7843;
			&#273;&#7911; ti&#7873;n thuê tài s&#7843;n theo ph&#432;&#417;ng
			th&#7913;c &#273;ã th&#7887;a thu&#7853;n;</p>

		<p class=MsoNormal style='text-align: justify'>d) Tr&#7843;
			l&#7841;i tài s&#7843;n thuê &#273;úng th&#7901;i h&#7841;n và
			ph&#432;&#417;ng th&#7913;c &#273;ã th&#7887;a thu&#7853;n;</p>

		<p class=MsoNormal style='text-align: justify'>e) Ch&#7883;u toàn
			b&#7897; chi phí liên quan &#273;&#7871;n chi&#7871;c xe trong quá
			trình thuê. Trong quá trình thuê xe mà Bên B gây ra tai n&#7841;n,
			h&#7887;ng hóc xe thì Bên B ph&#7843;i có trách nhi&#7879;m thông báo
			ngay cho Bên A và ch&#7883;u trách nhi&#7879;m s&#7917;a ch&#7919;a,
			ph&#7909;c h&#7891;i nguyên tr&#7841;ng xe cho Bên A.</p>

		<p class=MsoNormal style='text-align: justify'>
			<b><i>2. Bên B có các quy&#7873;n sau &#273;ây:</i></b>
		</p>

		<p class=MsoNormal style='text-align: justify'>a) Nh&#7853;n tài
			s&#7843;n thuê theo &#273;úng th&#7887;a thu&#7853;n;</p>

		<p class=MsoNormal style='text-align: justify'>b)
			&#272;&#432;&#7907;c s&#7917; d&#7909;ng tài s&#7843;n thuê theo
			&#273;úng công d&#7909;ng, m&#7909;c &#273;ích c&#7911;a tài
			s&#7843;n;</p>

		<p class=MsoNormal style='text-align: justify'>c) &#272;&#417;n
			ph&#432;&#417;ng &#273;ình ch&#7881; th&#7921;c hi&#7879;n H&#7907;p
			&#273;&#7891;ng thuê tài s&#7843;n và yêu c&#7847;u b&#7891;i
			th&#432;&#7901;ng thi&#7879;t h&#7841;i n&#7871;u:</p>

		<p class=MsoNormal style='text-align: justify'>- Bên A ch&#7853;m
			giao tài s&#7843;n theo th&#7887;a thu&#7853;n gây thi&#7879;t
			h&#7841;i cho Bên B;</p>

		<p class=MsoNormal style='text-align: justify'>- Bên A giao tài
			s&#7843;n thuê không &#273;úng &#273;&#7855;c &#273;i&#7875;m, tình
			tr&#7841;ng nh&#432; mô t&#7843; t&#7841;i &#272;i&#7873;u 1
			H&#7907;p &#273;&#7891;ng;</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 8: Cam &#273;oan c&#7911;a các bên</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>Bên A và Bên B
			ch&#7883;u trách nhi&#7879;m tr&#432;&#7899;c pháp lu&#7853;t
			v&#7873; nh&#7919;ng l&#7901;i cam &#273;oan sau &#273;ây:</p>

		<p class=MsoNormal style='text-align: justify'>
			<b><i>1. Bên A cam &#273;oan:</i></b>
		</p>

		<p class=MsoNormal style='text-align: justify'>- Nh&#7919;ng thông
			tin v&#7873; nhân thân, v&#7873; chi&#7871;c xe ô tô nêu trên này là
			hoàn toàn &#273;úng s&#7921; th&#7853;t;</p>

		<p class=MsoNormal style='text-align: justify'>
			-&nbsp;<span style='letter-spacing: -.1pt'>Không b&#7887; sót
				thành viên nào cùng có quy&#7873;n s&#7903; h&#7919;u xe ô tô nêu
				trên &#273;&#7875; ký H&#7907;p &#273;&#7891;ng này; N&#7871;u có
				b&#7845;t k&#7923; m&#7897;t khi&#7871;u ki&#7879;n nào c&#7911;a
				thành viên cùng có quy&#7873;n s&#7903; h&#7919;u xe ô tô trên
				b&#7883; b&#7887; sót thì Bên A ký tên/&#273;i&#7875;m ch&#7881;
				trong H&#7907;p &#273;&#7891;ng này xin hoàn toàn ch&#7883;u trách
				nhi&#7879;m tr&#432;&#7899;c pháp lu&#7853;t, k&#7875; c&#7843;
				vi&#7879;c ph&#7843;i mang tài s&#7843;n chung, riêng c&#7911;a mình
				&#273;&#7875; &#273;&#7843;m b&#7843;o cho trách nhi&#7879;m
				&#273;ó;</span>
		</p>
	</div>
	</page>

	<page size="A4" style="margin-top:20px;">
	<div class="WordSection1"  style="padding:20px 10px;">

		<p class=MsoNormal style='text-align: justify'>- Xe ô tô nêu trên
			hi&#7879;n t&#7841;i thu&#7897;c quy&#7873;n s&#7903; h&#7919;u,
			s&#7917; d&#7909;ng h&#7907;p pháp c&#7911;a Bên A, không có tranh
			ch&#7845;p, không b&#7883; ràng bu&#7897;c d­&#432;&#7899;i b&#7845;t
			c&#7913; hình th&#7913;c nào b&#7903;i các giao d&#7883;ch &#273;ang
			t&#7891;n t&#7841;i&nbsp; nh&#432;: C&#7847;m c&#7889;, th&#7871;
			ch&#7845;p, b&#7843;o lãnh, mua bán, trao &#273;&#7893;i, t&#7863;ng
			cho, cho thuê, cho m&#432;&#7907;n, góp v&#7889;n vào doanh
			nghi&#7879;p hay b&#7845;t k&#7923; m&#7897;t quy&#7871;t
			&#273;&#7883;nh nào c&#7911;a c&#417; quan nhà n­&#432;&#7899;c có
			th&#7849;m quy&#7873;n nh&#7857;m h&#7841;n ch&#7871; quy&#7873;n
			&#273;&#7883;nh &#273;o&#7841;t c&#7911;a Bên A;</p>

		<p class=MsoNormal style='text-align: justify'>
			-&nbsp;<span style='letter-spacing: -.3pt'>Vi&#7879;c giao
				k&#7871;t H&#7907;p &#273;&#7891;ng này là hoàn toàn t&#7921;
				nguy&#7879;n, d&#7913;t khoát, không b&#7883; l&#7915;a d&#7889;i
				ho&#7863;c ép bu&#7897;c;</span>
		</p>

		<p class=MsoNormal style='text-align: justify'>- Th&#7921;c
			hi&#7879;n &#273;úng và &#273;&#7847;y &#273;&#7911; t&#7845;t
			c&#7843; các th&#7887;a thu&#7853;n &#273;ã ghi trong b&#7843;n
			H&#7907;p &#273;&#7891;ng này;</p>

		<p class=MsoNormal style='text-align: justify'>
			<b><i>2. Bên B cam &#273;oan:</i></b>
		</p>

		<p class=MsoNormal style='text-align: justify'>a. Nh&#7919;ng
			thông tin pháp nhân, nhân thân &#273;ã ghi trong H&#7907;p
			&#273;&#7891;ng này là &#273;úng s&#7921; th&#7853;t;</p>

		<p class=MsoNormal style='text-align: justify'>b. &#272;ã xem xét
			k&#7929;, bi&#7871;t rõ v&#7873; tài s&#7843;n thuê;</p>

		<p class=MsoNormal style='text-align: justify'>c. Vi&#7879;c giao
			k&#7871;t H&#7907;p &#273;&#7891;ng này hoàn toàn t&#7921;
			nguy&#7879;n, không b&#7883; l&#7915;a d&#7889;i ho&#7863;c ép
			bu&#7897;c;</p>

		<p class=MsoNormal style='text-align: justify'>d. Th&#7921;c
			hi&#7879;n &#273;úng và &#273;&#7847;y &#273;&#7911; t&#7845;t
			c&#7843; các tho&#7843; thu&#7853;n &#273;ã ghi trong H&#7907;p
			&#273;&#7891;ng này;</p>

		<p class=MsoNormal style='text-align: justify'>
			<b><i>3. Hai bên cam &#273;oan:</i></b>
		</p>

		<p class=MsoNormal style='text-align: justify'>- Các bên cam
			k&#7871;t m&#7885;i gi&#7845;y t&#7901; v&#7873; nhân thân và tài
			s&#7843;n &#273;&#7873;u là gi&#7845;y t&#7901; th&#7853;t, c&#7845;p
			&#273;úng th&#7849;m quy&#7873;n, còn nguyên giá tr&#7883; pháp lý và
			không b&#7883; t&#7849;y xóa, s&#7917;a ch&#7919;a. N&#7871;u sai các
			bên hoàn toàn ch&#7883;u trách nhi&#7879;m tr&#432;&#7899;c pháp
			lu&#7853;t k&#7875; c&#7843; vi&#7879;c mang tài s&#7843;n chung,
			riêng &#273;&#7875; &#273;&#7843;m b&#7843;o cho l&#7901;i cam
			&#273;oan trên.&nbsp;</p>

		<p class=MsoNormal style='text-align: justify'>
			- N&#7871;u có th&#7855;c m&#7855;c, khi&#7871;u n&#7841;i,
			khi&#7871;u ki&#7879;n d&#7851;n &#273;&#7871;n H&#7907;p
			&#273;&#7891;ng vô hi&#7879;u (k&#7875; c&#7843; vô hi&#7879;u
			m&#7897;t ph&#7847;n) thì các bên t&#7921; ch&#7883;u trách
			nhi&#7879;m tr&#432;&#7899;c pháp lu&#7853;t<i>.</i>&nbsp;
		</p>

		<p class=MsoNormal style='text-align: justify'>- T&#7841;i
			th&#7901;i &#273;i&#7875;m ký k&#7871;t, các bên hoàn toàn minh
			m&#7851;n, sáng su&#7889;t, có &#273;&#7847;y &#273;&#7911; n&#259;ng
			l&#7921;c hành vi dân s&#7921;, cam &#273;oan &#273;ã bi&#7871;t rõ
			v&#7873; nhân thân và thông tin v&#7873; nh&#7919;ng ng&#432;&#7901;i
			có tên trong H&#7907;p &#273;&#7891;ng này.</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 9: &#272;i&#7873;u kho&#7843;n cu&#7889;i cùng</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>1. N&#7871;u vì
			m&#7897;t lý do không th&#7875; kh&#7855;c ph&#7909;c
			&#273;&#432;&#7907;c mà m&#7897;t trong hai bên mu&#7889;n ch&#7845;m
			d&#7913;t h&#7907;p &#273;&#7891;ng tr&#432;&#7899;c th&#7901;i
			h&#7841;n, thì ph&#7843;i báo cho bên kia bi&#7871;t tr&#432;&#7899;c
			……. tháng.&nbsp;</p>

		<p class=MsoNormal style='text-align: justify'>2. ……. (…….) tháng
			tr&#432;&#7899;c khi h&#7907;p &#273;&#7891;ng này h&#7871;t
			hi&#7879;u l&#7921;c, hai bên ph&#7843;i cùng trao &#273;&#7893;i
			vi&#7879;c thanh lý h&#7907;p &#273;&#7891;ng; N&#7871;u hai bên
			mu&#7889;n ti&#7871;p t&#7909;c thuê xe ô tô thì s&#7869; cùng nhau
			ký ti&#7871;p h&#7907;p &#273;&#7891;ng m&#7899;i ho&#7863;c ký
			ph&#7909; l&#7909;c gia h&#7841;n h&#7907;p &#273;&#7891;ng.</p>

		<p class=MsoNormal style='text-align: justify'>3. H&#7907;p
			&#273;&#7891;ng này có hi&#7879;u l&#7921;c k&#7875; t&#7915;
			th&#7901;i &#273;i&#7875;m các bên ký k&#7871;t. M&#7885;i s&#7917;a
			&#273;&#7893;i b&#7893; sung ph&#7843;i &#273;&#432;&#7907;c c&#7843;
			hai bên l&#7853;p thành v&#259;n b&#7843;n;</p>

		<p class=MsoNormal style='text-align: justify'>4. Trong quá trình
			th&#7921;c hi&#7879;n H&#7907;p &#273;&#7891;ng mà phát sinh tranh
			ch&#7845;p, các bên cùng nhau th&#432;&#417;ng l&#432;&#7907;ng
			gi&#7843;i quy&#7871;t trên nguyên t&#7855;c tôn tr&#7885;ng
			quy&#7873;n l&#7907;i c&#7911;a nhau; trong tr&#432;&#7901;ng
			h&#7907;p không gi&#7843;i quy&#7871;t &#273;&#432;&#7907;c, thì
			m&#7897;t trong hai bên có quy&#7873;n kh&#7903;i ki&#7879;n
			&#273;&#7875; yêu c&#7847;u toà án nhân dân có th&#7849;m quy&#7873;n
			gi&#7843;i quy&#7871;t theo quy &#273;&#7883;nh c&#7911;a pháp
			lu&#7853;t.</p>

		<p class=MsoNormal style='text-align: justify'>5. Hai
			bên&nbsp;&#273;&#7873;u &#273;ã t&#7921; &#273;&#7885;c l&#7841;i
			toàn b&#7897; n&#7897;i dung c&#7911;a H&#7907;p &#273;&#7891;ng này,
			&#273;ã hi&#7875;u và &#273;&#7891;ng ý v&#7899;i toàn b&#7897;
			n&#7897;i dung ghi trong H&#7907;p &#273;&#7891;ng, không có
			&#273;i&#7873;u gì v&#432;&#7899;ng m&#7855;c. Bên A, bên B &#273;ã
			t&#7921; nguy&#7879;n ký tên/&#273;óng d&#7845;u/&#273;i&#7875;m
			ch&#7881; vào H&#7907;p &#273;&#7891;ng này.</p>

		<p class=MsoNormal style='text-align: justify'>H&#7907;p
			&#273;&#7891;ng &#273;&#432;&#7907;c l&#7853;p thành ……(……) b&#7843;n
			có giá tr&#7883; pháp lý nh&#432; nhau, m&#7895;i bên gi&#7919; ….
			b&#7843;n làm b&#7857;ng ch&#7913;ng.&nbsp;</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&nbsp;&nbsp;BÊN CHO
				THUÊ                                                       BÊN THUÊ</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<i>(ký và ghi rõ h&#7885;
				tên)                                            (ký và ghi rõ
				h&#7885; tên)</i>
		</p>

		<p class=MsoNormal>&nbsp;</p>

	</div>
	<footer>
		<div style="display: flex; justify-content: center; margin-top: 35px;">
			<button type="button" class="btn btn-info btn-icon-text"
				onclick="window.print()"
				style="padding: 0.75rem 1rem; color: #f3f6f9; background-color: #0a7dff; margin-bottom:20px;width: 185px;">
				In hợp đồng <i class="ti-printer btn-icon-append"></i>
			</button>
		</div>
		<div style="display: flex; justify-content: center; margin-top: 35px;">
			<button type="button" class="btn btn-danger btn-icon-text"
				onclick="openPage('../../gdChinhNVQL.jsp')"
				style="padding: 0.75rem 1rem; color: #f3f6f9; margin-bottom:20px;width: 185px;" >
				Quay lại trang chủ <i class=" ti-home btn-icon-append"></i>
			</button>
		</div>
	</footer>
	<!-- 		<button onclick="window.print()">In hợp đồng</button> --> 
	</page>
	
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="../../vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="../../js/off-canvas.js"></script>
	<script src="../../js/hoverable-collapse.js"></script>
	<script src="../../js/template.js"></script>
	<script src="../../js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->
</body>
</html>