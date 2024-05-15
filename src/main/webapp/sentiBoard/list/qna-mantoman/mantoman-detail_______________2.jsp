<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>

*, *::before, *::after {
	box-sizing: border-box;
}

div {
	display: block;
	unicode-bidi: isolate;
}

ol, ul, li {
	list-style: none;
}

article, aside, details, figcaption, figure, footer, header, main, menu,
	nav, section, summary {
	display: block;
}

section {
	display: block;
	unicode-bidi: isolate;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
	unicode-bidi: isolate;
}

@media ( min-width : 541px) {
	.css-1t4xf4n {
		-webkit-flex: 1;
		-ms-flex: 1;
		flex: 1;
		padding-top: 190px;
	}
}

@media ( min-width : 541px) {
	.mid-div {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-pack: justify;
		-webkit-justify-content: space-between;
		justify-content: space-between;
		min-width: 1000px;
		max-width: 1600px;
		margin: 40px auto 0;
		padding: 0 50px 100px;
	}
}

.mid-div {
	position: relative;
}

@media ( min-width : 541px) {
	.mid-left {
		flex: 0 0 auto;
		width: 180px;
		margin-right: 50px;
	}
}

.name {
	font-size: 40px;
	font-weight: 700;
	line-height: 1;
	color: rgb(0, 0, 0);
	word-break: break-all;
}

.like {
	margin: 27px 0px 30px;
	font-size: 14px;
}

.like-li {
	padding: 4px 0px 5px;
}

.like-a {
	font-size: 15px;
	font-weight: 600;
	color: rgb(48, 48, 51);
}

a {
	-webkit-text-decoration: none;
	text-decoration: none;
	outline: none;
}

@media ( min-width : 541px) {
	.mid-top {
		position: absolute;
		top: 0px;
		right: 50px;
		left: 280px;
		height: 150px;
		padding: 25px 0px;
	}
}

@media ( min-width : 541px) {
	.mid-top {
		height: 150px;
		padding: 25px 0px;
	}
}

.mid-top {
	display: flex;
	line-height: 1;
	background-color: rgb(48, 48, 51);
}

.user-grade {
	position: relative;
	padding: 0px 20px;
	width: 50%;
	border-left: none;
}

@media ( min-width : 541px) {
	.grade1 {
		display: flex;
		flex-direction: column;
		-webkit-box-pack: justify;
		justify-content: space-between;
		height: 100%;
	}
}

.grade1 {
	/* display: block; */
	color: rgb(255, 255, 255);
}

.sale {
	position: absolute;
	right: 20px;
	bottom: 0px;
	height: 32px;
	padding: 0px 20px;
	font-size: 14px;
	font-weight: 300;
	line-height: 30px;
	color: rgb(255, 255, 255);
	border: 1px solid rgb(228, 228, 228);
	border-radius: 16px;
}

.grade2 {
	position: relative;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 14px;
	font-weight: 600;
	color: rgb(160, 160, 160);
}

.grade2::after {
	content: "";
	transform: rotate(45deg);
	display: inline-block;
	width: 5px;
	height: 5px;
	margin-left: 3px;
	border-top: 1px solid rgb(160, 160, 160);
	border-right: 1px solid rgb(160, 160, 160);
}

@media ( max-width : 1440px) {
	.grade-color {
		font-size: 30px;
	}
}

.grade-color {
	display: block;
	font-size: 50px;
	font-weight: 400;
	transition: font-size 0.25s ease-in-out 0s;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
	unicode-bidi: isolate;
}

.user-coupon, .user-mileage {
	position: relative;
	width: 25%;
	padding: 0px 20px;
	border-left: 1px solid rgb(93, 93, 93);
}

.shop-info {
	margin-bottom: 8px;
	font-size: 17px;
	line-height: 26px;
	font-weight: 800;
	color: rgb(48, 48, 51);
}

h4 {
	display: block;
	margin-block-start: 1.33em;
	margin-block-end: 1.33em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
	unicode-bidi: isolate;
}

@media ( min-width : 541px) {
	.mid-mid {
		-webkit-flex: 1;
		-ms-flex: 1;
		flex: 1;
		padding-top: 190px;
	}
}

.delivery-view {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(48, 48, 51);
	font-weight: 600;
}

.shop-info-a {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(93, 93, 93);
	font-weight: 200;
}

.id {
	margin-top: 30px;
}

.id-info {
	margin-bottom: 8px;
	font-size: 17px;
	line-height: 26px;
	font-weight: 800;
	color: rgb(48, 48, 51);
}

.id-a {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(93, 93, 93);
	font-weight: 200;
}

.service-center {
	margin-top: 30px;
}

.service-info {
	margin-bottom: 8px;
	font-size: 17px;
	line-height: 26px;
	font-weight: 800;
	color: rgb(48, 48, 51);
}

.service-a {
	display: inline-block;
	padding: 10px 0px;
	font-size: 15px;
	color: rgb(93, 93, 93);
	font-weight: 200;
}

.information {
	position: relative;
	margin-top: 30px;
}

.service-center-guide {
	position: absolute;
	top: 0px;
	left: 0px;
	overflow: hidden;
	width: 1px;
	height: 1px;
	margin: 0px;
	padding: 0px;
	white-space: nowrap;
}

.service-email {
	font-size: 12px;
	line-height: 1;
	color: rgb(160, 160, 160);
}

.go-go {
	margin-top: 20px;
}

.go-go-go {
	display: block;
	box-sizing: border-box;
	width: 150px;
	height: 40px;
	padding-left: 12px;
	font-size: 12px;
	line-height: 38px;
	color: rgb(48, 48, 51);
	border: 1px solid rgb(228, 228, 228);
	border-radius: 2px;
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}
</style>
<style>
.css-tmdn83 {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-title-m-medium-font-family);
	font-weight: var(- -ruler-semantic-typography-title-m-medium-font-weight);
	line-height: var(- -ruler-semantic-typography-title-m-medium-line-height);
	font-size: var(- -ruler-semantic-typography-title-m-medium-font-size);
	color: var(- -ruler-semantic-color-text-primary);
}

.css-1heuese {
	display: flex;
	border-bottom: 4px solid rgb(0, 0, 0);
	margin-top: 40px;
}

.css-19yreqa {
	cursor: pointer;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	height: 49px;
	font-size: 14px;
	color: rgb(255, 255, 255);
	background-color: rgb(0, 0, 0);
	width: auto;
	padding: 0px 30px;
	border: none;
}

.css-140aynn {
	cursor: pointer;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	height: 49px;
	font-size: 14px;
	color: rgb(160, 160, 160);
	background-color: rgb(255, 255, 255);
	width: auto;
	padding: 0px 30px;
	border: none;
}

.css-tr1wkt {
	width: 100%;
}

.css-1lads1q {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 100%;
}

.css-1ofqig9 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	width: 100%;
}

.css-f9qh2y {
	display: flex;
	flex-direction: row;
	min-height: 50px;
	border-bottom: 1px solid rgb(212, 212, 212);
}

.css-f9qh2y:first-of-type {
	border-bottom: 1px solid var(- -ruler-scale-color-gray-950);
}

.css-r9nzd6 {
	display: flex;
	flex: 1 1 0px;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	min-height: 50px;
}

.css-17x39sj {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-l-font-family);
	font-weight: var(- -ruler-semantic-typography-text-l-font-weight);
	line-height: var(- -ruler-semantic-typography-text-l-line-height);
	font-size: var(- -ruler-semantic-typography-text-l-font-size);
	color: var(- -ruler-semantic-color-text-secondary);
}

.css-1o3oomb {
	margin-top: 60px;
}

.css-19djemi {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	width: 100%;
	margin-top: 30px;
	border-top: 4px solid var(- -ruler-scale-color-gray-950);
}

.css-1vqrq36 {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-xxl-bold-font-family);
	font-weight: var(- -ruler-semantic-typography-text-xxl-bold-font-weight);
	line-height: var(- -ruler-semantic-typography-text-xxl-bold-line-height);
	font-size: var(- -ruler-semantic-typography-text-xxl-bold-font-size);
	color: var(- -ruler-semantic-color-text-primary);
}

.css-zp7ii8 {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	min-height: 50px;
	border-bottom: 1px solid #d4d4d4;
}

.css-n0ir3y:first-of-type {
	-webkit-flex: 0 0 100px;
	-ms-flex: 0 0 100px;
	flex: 0 0 100px;
}

.css-n0ir3y {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex: 1 1 0;
	-ms-flex: 1 1 0;
	flex: 1 1 0;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	min-height: 50px;
	-webkit-flex: 1 1 0;
	-ms-flex: 1 1 0;
	flex: 1 1 0;
	padding: 15px 1%;
}

.css-ery12n {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-xxl-bold-font-family);
	font-weight: var(- -ruler-semantic-typography-text-xxl-bold-font-weight);
	line-height: var(- -ruler-semantic-typography-text-xxl-bold-line-height);
	font-size: var(- -ruler-semantic-typography-text-xxl-bold-font-size);
	color: var(- -ruler-semantic-color-text-primary);
	text-align: center;
	white-space: pre;
}

.css-8xai2a {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-l-font-family);
	font-weight: var(- -ruler-semantic-typography-text-l-font-weight);
	line-height: var(- -ruler-semantic-typography-text-l-line-height);
	font-size: var(- -ruler-semantic-typography-text-l-font-size);
	color: var(- -ruler-semantic-color-text-secondary);
	text-align: center;
	white-space: nowrap;
	padding-top: 7px;
	padding-bottom: 6px;
}

.css-izpnhq {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-l-bold-font-family);
	font-weight: var(- -ruler-semantic-typography-text-l-bold-font-weight);
	line-height: var(- -ruler-semantic-typography-text-l-bold-line-height);
	font-size: var(- -ruler-semantic-typography-text-l-bold-font-size);
	color: var(- -ruler-semantic-color-text-primary);
}

.css-19ft22s {
	margin-top: 60px;
}

.css-192or3:first-of-type {
	margin-top: 0;
}

.css-192or3 {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-xxl-bold-font-family);
	font-weight: var(- -ruler-semantic-typography-text-xxl-bold-font-weight);
	line-height: var(- -ruler-semantic-typography-text-xxl-bold-line-height);
	font-size: var(- -ruler-semantic-typography-text-xxl-bold-font-size);
	color: var(- -ruler-semantic-color-text-primary);
	margin-top: 60px;
}

.css-1hw29i9 {
	margin-top: 12px;
}

.css-vuajq3 {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-xxl-bold-font-family);
	font-weight: var(- -ruler-semantic-typography-text-xxl-bold-font-weight);
	line-height: var(- -ruler-semantic-typography-text-xxl-bold-line-height);
	font-size: var(- -ruler-semantic-typography-text-xxl-bold-font-size);
	color: var(- -ruler-semantic-color-text-secondary);
	margin-top: 60px;
}

.css-130oa9n {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-l-font-family);
	font-weight: var(- -ruler-semantic-typography-text-l-font-weight);
	line-height: var(- -ruler-semantic-typography-text-l-line-height);
	font-size: var(- -ruler-semantic-typography-text-l-font-size);
	color: var(- -ruler-semantic-color-text-secondary);
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	padding-left: 10px;
	line-height: 32px;
	word-break: keep-all;
}

.css-130oa9n::before {
	content: '';
	position: absolute;
	top: 14px;
	left: 0;
	display: inline-block;
	width: 4px;
	height: 4px;
	background-color: var(- -ruler-scale-color-gray-950);
	border-radius: 100%;
}
</style>
<!-- article-right style -->
<style>

a, abbr, acronym, address, article, aside, audio, b, big, blockquote, body, button, canvas, caption, cite, code, dd, del, details, dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form, h1, h2, h3, h4, h5, h6, header, html, i, iframe, img, input, ins, kbd, label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby, s, samp, section, select, small, span, strike, strong, sub, summary, sup, table, tbody, td, textarea, tfoot, th, thead, time, tr, tt, u, ul, var, video {
    margin: 0;
    padding: 0;
}

@media screen and (min-width: 541px) {
   .article_right {
        -webkit-box-flex: 1;
        flex: 1;
        padding-top: 190px;
    }
}

@media screen and (max-width: 540px) {
    [_nghost-ctd-c77] .my_tit, [_nghost-ctd-c77] .my_tit.nobor {
        padding: 6px 0 24px;
        border-bottom: none;
        font-size: 20px;
        line-height: 30px;
        text-align: center;
    }
}

[_nghost-ctd-c77] .my_tit.nobor {
    padding: 0;
    border: 0;
}

[_nghost-ctd-c77] .my_tit {
    position: relative;
    padding-bottom: 10px;
    border-bottom: 4px solid #000;
    font-size: 22px;
    color: #000;
    line-height: 30px;
    font-weight: 500;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    unicode-bidi: isolate;
}

@media screen and (max-width: 540px) {
    .my_tit_dsc[_ngcontent-ctd-c149] {
        margin: 0 20px;
    }
}

.my_tit_dsc[_ngcontent-ctd-c149] {
    font-size: 14px;
    color: #5d5d5d;
    line-height: 24px;
}

form {
    display: block;
    margin-top: 0em;
    unicode-bidi: isolate;
}

fieldset {
    display: block;
    margin-inline-start: 2px;
    margin-inline-end: 2px;
    padding-block-start: 0.35em;
    padding-inline-start: 0.75em;
    padding-inline-end: 0.75em;
    padding-block-end: 0.625em;
    min-inline-size: min-content;
    border-width: 2px;
    border-style: groove;
    border-color: rgb(192, 192, 192);
    border-image: initial;
}

[_nghost-ctd-c77] fieldset {
    padding: 0;
    border: 0;
}

legend {
    display: block;
    padding-inline-start: 2px;
    padding-inline-end: 2px;
    unicode-bidi: isolate;
    border-width: initial;
    border-style: none;
    border-color: initial;
    border-image: initial;
}

[_nghost-ctd-c77] .blind, [_nghost-ctd-c77] legend {
    overflow: hidden;
    position: absolute;
    top: 0;
    left: 0;
    width: 1px;
    height: 1px;
    font-size: 1px;
    line-height: 100px;
    white-space: nowrap;
}

.tb_lst[_ngcontent-ctd-c149] {
    margin-top: 20px;
    border-top: 4px solid #000;
}

.tb_lst[_ngcontent-ctd-c149] > li[_ngcontent-ctd-c149]:after {
    display: block;
    clear: both;
    content: "";
}

li, ol, ul {
    list-style: none;
}


@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] > li[_ngcontent-ctd-c149] {
        display: list-item;
        width: auto;
        padding: 16px 20px;
    }

.tb_lst[_ngcontent-ctd-c149] > li[_ngcontent-ctd-c149] {
    display: table;
    position: relative;
    width: 100%;
    border-bottom: 1px solid #e4e4e4;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149]:after {
        display: block;
        clear: both;
        content: "";
    }
}

li {
    text-align: -webkit-match-parent;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149]:first-child {
        width: auto;
        border: 0;
    }
}

.tb_lst[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149]:first-child {
    width: 120px;
    padding: 0;
    border-right: 1px solid #e4e4e4;
    vertical-align: top;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149] {
        display: block;
        height: auto;
        padding: 0;
    }
}

.tb_lst[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149] {
    display: table-cell;
    height: 62px;
    padding: 10px 0 10px 20px;
    box-sizing: border-box;
    font-size: 14px;
    vertical-align: middle;
}

strong {
    font-weight: bold;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149] {
        margin-bottom: 10px;
        font-size: 16px;
        line-height: 25px;
    }
}

.tb_lst[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149] {
    display: inline-block;
    font-size: 14px;
    font-weight: 600;
    color: #303033;
    line-height: 60px;
}



@media screen and (max-width: 540px) {

.tb_lst[_ngcontent-ctd-c149] uio-radio[_ngcontent-ctd-c149] {
        margin: 5px 10px 15px 0;
    }
}

.tb_lst[_ngcontent-ctd-c149] uio-radio[_ngcontent-ctd-c149] {
    display: inline-block;
    min-width: 100px;
    margin: 5px 20px 0 0;
    font-size: 12px;
}

span[_ngcontent-ctd-c86] {
    display: inline-block;
    overflow: hidden;
    position: relative;
    min-height: 20px;
    line-height: 20px;
    vertical-align: top;
}

input[type="radio" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 0px 5px;
    padding: initial;
    border: initial;
}

input {
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-variant-alternates: ;
    font-variant-position: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    font-optical-sizing: ;
    font-kerning: ;
    font-feature-settings: ;
    font-variation-settings: ;
    text-rendering: auto;
    color: fieldtext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: field;
    margin: 0em;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
    padding-block: 1px;
    padding-inline: 2px;
}

input[_ngcontent-ctd-c86] {
    position: absolute;
    top: -100%;
    left: -100%;
    z-index: -10;
    width: 13px;
    height: 13px;
    background: transparent;
}

[_nghost-ctd-c77] input, [_nghost-ctd-c77] textarea {
    border: 0;
    border-radius: 0;
    background: transparent;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}

label[_ngcontent-ctd-c86]:after {
    top: 1px;
    left: 1px;
    width: 18px;
    height: 18px;
    border: 5px solid #fff;
    border-radius: 50%;
    background: #f4f4f4;
}

label[_ngcontent-ctd-c86]:before {
    top: 0;
    left: 0;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    border: 1px solid #d4d4d4;
}

label[_ngcontent-ctd-c86] {
    display: inline-block;
    position: relative;
    z-index: 1;
    padding-left: 27px;
    line-height: 20px;
    color: #303033;
    box-sizing: border-box;
    cursor: pointer;
    vertical-align: top;
}

label {
    cursor: default;
}

label[_ngcontent-ctd-c86]:after, label[_ngcontent-ctd-c86]:before {
    position: absolute;
    z-index: 10;
    box-sizing: border-box;
    content: "";
}



@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .user[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .user_email[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .user_id[_ngcontent-ctd-c149] {
        display: table;
        width: 100%;
        padding: 0 20px;
        border: 0;
        box-sizing: border-box;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .user[_ngcontent-ctd-c149] {
        margin-top: 14px;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .user[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149]:first-child, .tb_lst[_ngcontent-ctd-c149] .user_email[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149]:first-child, .tb_lst[_ngcontent-ctd-c149] .user_id[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149]:first-child {
        width: 55px;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .user[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .user_email[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .user_id[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149] {
        display: table-cell;
        height: 50px;
        vertical-align: middle;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .order_no[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .user[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .user_email[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .user_id[_ngcontent-ctd-c149] .in_td[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149] {
        margin-bottom: 0;
        font-size: 14px;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .user_email[_ngcontent-ctd-c149] {
        position: relative;
        padding-bottom: 45px;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .user_email[_ngcontent-ctd-c149] a[_ngcontent-ctd-c149] {
        position: absolute;
        bottom: 13px;
        left: 55px;
    }
}

.tb_lst[_ngcontent-ctd-c149] .user_email[_ngcontent-ctd-c149] a[_ngcontent-ctd-c149] {
    display: inline-block;
    width: 110px;
    height: 32px;
    margin-left: 20px;
    border: 1px solid #d4d4d4;
    border-radius: 2px;
    font-weight: 600;
    font-size: 12px;
    color: #303033;
    text-align: center;
    line-height: 32px;
}


[_nghost-ctd-c77] a, [_nghost-ctd-c77] button {
    outline: none;
}
a, button {
    outline: none;
}
a {
    text-decoration: none;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .tit_row[_ngcontent-ctd-c149] {
        padding: 6px 20px;
        border-bottom: 0;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .cnt_row[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .tit_row[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149] {
        display: none;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .inpbx[_ngcontent-ctd-c149] {
        width: 100%;
    }
}

.tb_lst[_ngcontent-ctd-c149] .inpbx[_ngcontent-ctd-c149] {
    float: left;
    width: 245px;
    height: 46px;
}

[_nghost-ctd-c77] .inpbx {
    position: relative;
    height: 40px;
    border: 1px solid #d4d4d4;
    background: #fff;
    vertical-align: top;
    box-sizing: border-box;
}

input[type="text" i] {
    padding-block: 1px;
    padding-inline: 2px;
}

input:not([type="file" i], [type="image" i], [type="checkbox" i], [type="radio" i]) {
}

.tb_lst[_ngcontent-ctd-c149] .inpbx[_ngcontent-ctd-c149] input[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .inptxtbx[_ngcontent-ctd-c149] textarea[_ngcontent-ctd-c149] {
    padding: 0 18px;
    font-size: 14px;
    font-weight: 600;
    color: #303033;
    line-height: 20px;
}

[_nghost-ctd-c77] .inpbx input {
    display: block;
    width: 100%;
    height: 100%;
    padding: 0 14px;
    font-size: 15px;
    color: #1a1a1a;
    vertical-align: top;
    border: 0;
    background: transparent;
    outline: none;
    box-sizing: border-box;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .cnt_row[_ngcontent-ctd-c149] {
        padding: 6px 20px 20px;
        border-bottom: 1px solid #e4e4e4;
    }
}

.tb_lst[_ngcontent-ctd-c149] .cnt_row[_ngcontent-ctd-c149] {
    position: relative;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .inptxtbx[_ngcontent-ctd-c149] {
        padding: 0;
    }
}

.tb_lst[_ngcontent-ctd-c149] .inptxtbx[_ngcontent-ctd-c149] {
    padding-right: 12px;
}

.tb_lst[_ngcontent-ctd-c149] .inptxtbx[_ngcontent-ctd-c149] textarea[_ngcontent-ctd-c149] {
    padding: 18px;
    font-size: 14px;
    font-weight: 400;
    resize: none;
}

.tb_lst[_ngcontent-ctd-c149] .inpbx[_ngcontent-ctd-c149] input[_ngcontent-ctd-c149], .tb_lst[_ngcontent-ctd-c149] .inptxtbx[_ngcontent-ctd-c149] textarea[_ngcontent-ctd-c149] {
    padding: 0 18px;
    font-size: 14px;
    font-weight: 600;
    color: #303033;
    line-height: 20px;
}

[_nghost-ctd-c77] .inptxtbx textarea {
    display: block;
    overflow: auto;
    width: 100%;
    padding: 14px;
    border: 1px solid #ccc;
    background: transparent;
    font-size: 15px;
    line-height: 20px;
    color: #1a1a1a;
    vertical-align: top;
    outline: none;
    box-sizing: border-box;
}

[_nghost-ctd-c77] textarea {
    resize: none;
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .cnt_row[_ngcontent-ctd-c149] .ckemail[_ngcontent-ctd-c149] {
        margin-top: 10px;
    }
}

[_nghost-ctd-c82] {
    display: inline-block;
    overflow: hidden;
    position: relative;
    vertical-align: top;
    line-height: 20px;
    font-size: 12px;
}

[_nghost-ctd-c82] input[_ngcontent-ctd-c82] {
    overflow: hidden;
    position: absolute;
    top: 2px;
    left: 2px;
    z-index: -1;
    width: 1px;
    height: 1px;
    border: 0;
    background: transparent;
    visibility: hidden;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}

[_nghost-ctd-c82] label[_ngcontent-ctd-c82] {
    display: inline-block;
    position: relative;
    z-index: 10;
    color: #303033;
    box-sizing: border-box;
    cursor: pointer;
    vertical-align: top;
    padding-left: 29px;
}

[_nghost-ctd-c82] label[_ngcontent-ctd-c82]:before {
    position: absolute;
    top: 0;
    left: 0;
    background-color: #fff;
    border: 1px solid #d4d4d4;
    border-radius: 2px;
    text-align: center;
    box-sizing: border-box;
    content: "";
    width: 20px;
    height: 20px;
    transition: background-color .2s;
}

[_nghost-ctd-c82] label[_ngcontent-ctd-c82]:after {
    position: absolute;
    border: 1px solid #d4d4d4;
    border-width: 0 1px 1px 0;
    transform: rotate(45deg);
    content: "";
    top: 3px;
    left: 7px;
    width: 5px;
    height: 10px;
}

@media screen and (max-width: 540px) {
    .add_img[_ngcontent-ctd-c149] {
        border: 0;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] > li[_ngcontent-ctd-c149]:last-child {
        border: 0;
    }
}

@media screen and (max-width: 540px) {
    .add_img[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149] {
        display: none;
    }
}

@media screen and (max-width: 540px) {
    .tb_lst[_ngcontent-ctd-c149] .type[_ngcontent-ctd-c149] {
        margin-bottom: 10px;
        font-size: 16px;
        line-height: 25px;
    }
}

.add_img[_ngcontent-ctd-c149] .info_lst[_ngcontent-ctd-c149] {
    margin-top: 16px;
}

@media screen and (max-width: 540px) {
    .add_img[_ngcontent-ctd-c149] .info_lst[_ngcontent-ctd-c149] li[_ngcontent-ctd-c149] {
        padding-left: 10px;
        line-height: 22px;
    }
}

.add_img[_ngcontent-ctd-c149] .info_lst[_ngcontent-ctd-c149] li[_ngcontent-ctd-c149] {
    position: relative;
    padding-left: 14px;
    font-size: 12px;
    color: #a0a0a0;
    line-height: 24px;
}

.add_img[_ngcontent-ctd-c149] .info_lst[_ngcontent-ctd-c149] li[_ngcontent-ctd-c149]:before {
    position: absolute;
    top: 9px;
    left: 0;
    width: 3px;
    height: 3px;
    border-radius: 100%;
    background: #a0a0a0;
    content: "";
}

.add_img[_ngcontent-ctd-c149] .info_lst[_ngcontent-ctd-c149] .point[_ngcontent-ctd-c149] {
    color: #ff4800;
}

.add_img[_ngcontent-ctd-c149] .info_lst[_ngcontent-ctd-c149] .point[_ngcontent-ctd-c149]:before {
    background: #ff4800;
}

.my_inq[_ngcontent-ctd-c149] .btn_bx[_ngcontent-ctd-c149] {
    margin: 10px 0 -20px;
    text-align: center;
}

@media screen and (max-width: 540px) {
    .my_inq[_ngcontent-ctd-c149] .btn_bx[_ngcontent-ctd-c149] button[_ngcontent-ctd-c149] {
        width: 100%;
        height: 56px;
        margin: 0 auto;
        padding: 0;
        font-size: 16px;
    }
}

.btn_bx[_ngcontent-ctd-c149] .btn_black[_ngcontent-ctd-c149] {
    width: 100px;
    height: 40px;
}

[_nghost-ctd-c77] .btn_black {
    display: inline-block;
    min-width: 82px;
    padding: 0 17px;
    border: 1px solid #303033;
    background: #303033;
    font-size: 13px;
    color: #fff;
    line-height: 38px;
    box-sizing: border-box;
}

[_nghost-ctd-c77] a, [_nghost-ctd-c77] button {
    outline: none;
}
button {
    border: 0;
    background: transparent;
    cursor: pointer;
}
a, button {
    outline: none;
}

[_nghost-ctd-c77] ruler-message-dialog {
    word-break: keep-all;
    text-align: center;
    line-height: 1.2;
}

article, aside, details, figcaption, figure, footer, header, main, menu, nav, section, summary {
    display: block;
}

@media screen and (max-width: 540px) {
    .header_active[_nghost-ctd-c77] .mypage[_ngcontent-ctd-c77], .header_active [_nghost-ctd-c77] .mypage[_ngcontent-ctd-c77] {
        padding-top: 50px;
    }
}

@media screen and (max-width: 1230px) {
    .header_active[_nghost-ctd-c77] .mypage[_ngcontent-ctd-c77], .header_active [_nghost-ctd-c77] .mypage[_ngcontent-ctd-c77] {
        padding-top: 170px;
    }
}

@media screen and (max-width: 540px) {
    .mypage[_ngcontent-ctd-c77] {
        padding: 50px 0 0;
    }
}

@media screen and (max-width: 1230px) {
    .mypage[_ngcontent-ctd-c77] {
        padding-top: 200px;
    }
}

.global_wrap[_ngcontent-ctd-c77] {
    -webkit-transition: padding-top .25s ease-out;
    transition: padding-top .25s ease-out;
}


</style>
<!-- article-right style -->

</head>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>

	<div class="mid-div">
		<div class="mid-left">
			<div class="mid-left-top">
				<h3 class="name">조*화</h3>
				<!-- ajax -->
				<ul class="like">
					<li class="like-li"><a class="like-a" href="#">좋아요 0</a></li>
				</ul>
			</div>
			<ul class="mid-top">
				<li class="user-grade"><a class="grade1" href="#"> <strong
						class="grade2">멤버십등급</strong> <span class="grade-color">GREEN</span>
				</a> <a class="sale" target="blank" href="#">할인혜택 보기</a></li>
				<li class="user-coupon"><a class="grade1" href="#"> <strong
						class="grade2">사용가능쿠폰</strong> <span class="grade-color">2</span>
				</a></li>
				<li class="user-mileage"><a class="grade1" href="#"> <strong
						class="grade2">마일리지</strong> <span class="grade-color">0</span>
				</a></li>
			</ul>
			<ul class="mid-left-list-top">
				<li class="">
					<h4 class="shop-info">나의 쇼핑정보</h4>
					<ul class="shop-info-list">
						<li class="shop-info-li"><a class="delivery-view" href="#">주문배송조회</a>
						</li>
						<li><a class="shop-info-a" href="#">숙박예약조회</a></li>
						<li><a class="shop-info-a" href="#">취소/교환/반품 내역</a></li>
						<li><a class="shop-info-a"
							href="/SentiProject/sentiBoard/list/mypage_item_review.jsp">상품
								리뷰</a></li>
						<li><a class="shop-info-a" href="#">증빙서류 발급</a></li>
					</ul>
				</li>
				<li class="id">
					<h4 class="id-info">나의 계정설정</h4>
					<ul class="">
						<li class="id-li"><a class="id-a" href="#">회원정보수정</a></li>
						<li class="id-li"><a class="id-a" href="#">회원등급</a></li>
						<li class="id-li"><a class="id-a" href="#">쿠폰</a></li>
						<li class="id-li"><a class="id-a" href="#">마일리지</a></li>
					</ul>
				</li>
				<li class="service-center">
					<h4 class="service-info">고객센터</h4>
					<ul class="">
						<li class="service-li"><a class="service-a" href="#">1:1
								문의내역</a></li>
						<li class="service-li"><a class="service-a" href="#">상품
								Q&A내역</a></li>
						<li class="service-li"><a class="service-a" href="#">공지사항</a>
						</li>
						<li class="service-li"><a class="service-a" href="#">FAQ</a>
						</li>
						<li class="service-li"><a class="service-a" href="#">고객의
								소리</a></li>
					</ul>
				</li>
			</ul>
			<section class="information">
				<h4 class="service-center-guide">고객센터 안내</h4>
				<p class="service-email">customer@29cm.co.kr</p>
				<ul class="go-go">
					<li><a class="go-go-go" href="#">1:1 문의하러가기</a></li>
				</ul>
			</section>
		</div>

		<div _ngcontent-ctd-c77="" class="article_right">
			<router-outlet _ngcontent-ctd-c77=""></router-outlet>
			<ui-qna-mantoman-detail _nghost-ctd-c149="" class="ng-star-inserted">
			<section _ngcontent-ctd-c149="" class="my_inq">
				<h3 _ngcontent-ctd-c149="" class="my_tit nobor">1:1 문의쓰기</h3>
				<p _ngcontent-ctd-c149="" class="my_tit_dsc">
					산업안전보건법 제 41조 시행령에 근거하여 2018년 10월 18일 부터 산업안전보건법에 따라 고객응대근로자 보호조치를
					시행하고 있습니다.<br _ngcontent-ctd-c149=""> 고객응대근로자에게 폭언, 폭행 등을 하지
					말아주세요.
				</p>
				<form _ngcontent-ctd-c149="" novalidate=""
					class="ng-untouched ng-pristine ng-invalid">
					<fieldset _ngcontent-ctd-c149="">
						<legend _ngcontent-ctd-c149="">1:1 문의 작성</legend>
						<ul _ngcontent-ctd-c149="" class="tb_lst">
							<li _ngcontent-ctd-c149="">
								<div _ngcontent-ctd-c149="" class="in_td">
									<strong _ngcontent-ctd-c149="" class="type">구매관련문의</strong>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="배송문의">배송문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="주문문의">주문문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="취소문의">취소문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="반품문의">반품문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="교환문의">교환문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="환불문의">환불문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="사은품문의">사은품문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="입금문의">입금문의</label>
									</span> </uio-radio>
									<!---->
								</div>
							</li>
							<li _ngcontent-ctd-c149="">
								<div _ngcontent-ctd-c149="" class="in_td">
									<strong _ngcontent-ctd-c149="" class="type">일반상담문의</strong>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="회원정보문의">회원정보문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="회원제도문의">회원제도문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="결제방법문의">결제방법문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="상품문의">상품문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="당첨문의">당첨문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="쿠폰/마일리지문의">쿠폰/마일리지문의</label>
									</span> </uio-radio>
									<!---->
								</div>
							</li>
							<li _ngcontent-ctd-c149="">
								<div _ngcontent-ctd-c149="" class="in_td">
									<strong _ngcontent-ctd-c149="" class="type">기타문의</strong>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="시스템문의">시스템문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="기타문의">기타문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="증빙서류문의">증빙서류문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="매장문의">매장문의</label>
									</span> </uio-radio>
									<uio-radio _ngcontent-ctd-c149="" _nghost-ctd-c86=""
										class="ng-star-inserted">
									<span _ngcontent-ctd-c86=""> <input
										_ngcontent-ctd-c86="" type="radio" name="undefined"> <label
										_ngcontent-ctd-c86="" title="리뷰재노출문의">리뷰재노출문의</label>
									</span> </uio-radio>
									<!---->
								</div>
							</li>

							<!---->
							<!---->
							<!---->
							<!---->
							<li _ngcontent-ctd-c149="" class="user">
								<div _ngcontent-ctd-c149="" class="in_td">
									<strong _ngcontent-ctd-c149="" class="type">성명</strong>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<p _ngcontent-ctd-c149="" class="txt"></p>
									조연화
								</div>
							</li>
							<li _ngcontent-ctd-c149="" class="user_id">
								<div _ngcontent-ctd-c149="" class="in_td">
									<strong _ngcontent-ctd-c149="" class="type">아이디</strong>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<p _ngcontent-ctd-c149="" class="txt"></p>
									dusk323@naver.com [GREEN]
								</div>
							</li>
							<li _ngcontent-ctd-c149="" class="user_email">
								<div _ngcontent-ctd-c149="" class="in_td">
									<strong _ngcontent-ctd-c149="" class="type">이메일</strong>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<p _ngcontent-ctd-c149="" class="txt"></p>
									dusk323@naver.com <a _ngcontent-ctd-c149=""
										href="/mypage/edit/info">이메일 변경하기</a>
								</div>
							</li>
							<li _ngcontent-ctd-c149="" class="tit_row">
								<div _ngcontent-ctd-c149="" class="in_td">
									<label _ngcontent-ctd-c149="" for="u_title" class="type">제목</label>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<div _ngcontent-ctd-c149="" class="inpbx">
										<input _ngcontent-ctd-c149="" type="text" id="u_title"
											formcontrolname="title" placeholder="제목을 입력하세요."
											class="ng-untouched ng-pristine ng-invalid">
									</div>
								</div>
							</li>
							<li _ngcontent-ctd-c149="" class="cnt_row">
								<div _ngcontent-ctd-c149="" class="in_td">
									<label _ngcontent-ctd-c149="" for="u_content" class="type">내용</label>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<div _ngcontent-ctd-c149="" class="inptxtbx">
										<textarea _ngcontent-ctd-c149="" id="u_content" rows="5"
											cols="1" placeholder="내용을 입력하세요." formcontrolname="contents"
											class="field_inp ng-untouched ng-pristine ng-invalid"></textarea>
									</div>
								</div>
								<div _ngcontent-ctd-c149="" class="ckemail">
									<uio-checkbox _ngcontent-ctd-c149="" label="이메일 받기"
										_nghost-ctd-c82="">
									<input _ngcontent-ctd-c82="" type="checkbox" value="undefined">
									<label _ngcontent-ctd-c82="" title="이메일 받기">이메일 받기</label> </uio-checkbox>
								</div>
							</li>
							<li _ngcontent-ctd-c149="" class="add_img">
								<div _ngcontent-ctd-c149="" class="in_td">
									<strong _ngcontent-ctd-c149="" class="type">사진첨부</strong>
								</div>
								<div _ngcontent-ctd-c149="" class="in_td">
									<uio-file-upload _ngcontent-ctd-c149="" _nghost-ctd-c113="">
									<div _ngcontent-ctd-c113="" class="fileUpload">
										<ul _ngcontent-ctd-c113="" class="fileUpload_list">
											<!---->
										</ul>
										<div _ngcontent-ctd-c113="" class="fileUpload-able"
											style="display: block;">
											<label _ngcontent-ctd-c113="" for="u_file">사진첨부</label> <input
												_ngcontent-ctd-c113="" type="file" accept="image/*"
												id="u_file" multiple="">
										</div>
									</div>
									</uio-file-upload>

									<ul _ngcontent-ctd-c149="" class="info_lst">
										<li _ngcontent-ctd-c149="">상품 불량 및 오배송의 경우, 해당 제품 사진을 등록
											부탁드립니다.</li>
										<li _ngcontent-ctd-c149="" class="point">파일명은 영문만 가능하며,
											파일당 최대 10MB 의<br _ngcontent-ctd-c149=""> 용량 제한이 있습니다.
										</li>
										<li _ngcontent-ctd-c149="">가로사이즈가 450pixel을 초과하는 경우 자동으로<br
											_ngcontent-ctd-c149=""> 450픽셀로 조정됩니다.
										</li>
										<li _ngcontent-ctd-c149="">첨부파일은 최대 2개까지 등록가능합니다.</li>
									</ul>
								</div>
							</li>
						</ul>

						<div _ngcontent-ctd-c149="" class="btn_bx">
							<button _ngcontent-ctd-c149="" type="submit" class="btn_black">
								등록하기</button>
						</div>
						<ruler-message-dialog _ngcontent-ctd-c149="" _nghost-ctd-c76=""
							class="ng-star-inserted"><!----> </ruler-message-dialog>
						<!---->
						<!---->
					</fieldset>
				</form>
				<!---->
			</section>
			</ui-qna-mantoman-detail>
			<!---->
		</div>

	</div>

	<br>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
</body>
<script>
$(document).ready(function() {
    $('.css-140aynn').click(function() {
        // 버튼들의 순서를 찾기
        var $currentBtn = $(this);
        var $otherBtn = $('.css-19yreqa');

        // jQuery의 'insertBefore' 메소드를 사용하여 순서 바꾸기
        if($currentBtn.index() > $otherBtn.index()) {
            $currentBtn.insertBefore($otherBtn);
        } else {
            $otherBtn.insertBefore($currentBtn);
        }
    });
});
</script>
</html>