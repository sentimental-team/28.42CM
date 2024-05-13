<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- <script src="/jspPro/resources/cdn-main/example.js"></script> -->

<style>

.css-djkdj4 {
    padding: 60px 50px 200px;
}

.css-yb8y9j {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-title-s-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-s-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-s-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-s-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-18qls73 {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding-top: 14px;
}

.css-mpxvda {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    flex-shrink: 0;
    width: 220px;
}

.css-1i7cscv {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding-top: 25px;
    border-top: 4px solid var(--ruler-semantic-color-fill-primary);
}

.css-13brihr {
    text-align: left;
}

body, input, select, textarea, button, a {
    -webkit-text-size-adjust: none;
    font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}

button {
    border: 0;
    background: transparent;
    cursor: pointer;
    outline: none;
}

.css-1kf5pac {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xxl-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-font-size);
    color: var(--ruler-semantic-color-text-secondary);
}

.css-1i7cscv > :not(style) ~ :not(style) {
    margin-top: 16px;
}

.css-1vqrq36 {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-3o8pio {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xxl-medium-font-family);
    font-weight: var(--ruler-semantic-typography-text-xxl-medium-font-weight);
    line-height: var(--ruler-semantic-typography-text-xxl-medium-line-height);
    font-size: var(--ruler-semantic-typography-text-xxl-medium-font-size);
    color: var(--ruler-semantic-color-text-secondary);
}

.css-ji86f3 {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    position: relative;
    flex-shrink: 0;
    width: 220px;
    padding-top: 14px;
    border-top: 4px solid var(--ruler-semantic-color-fill-primary);
    margin-top: 60px;
}

.css-n2i0sz {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-n2i0sz > :not(style) ~ :not(style) {
    margin-top: 24px;
}

.css-1x09jzi {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-1uvje1m {
    overflow-y: scroll;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    row-gap: 16px;
    max-height: 345px;
    margin-right: 4px;
    padding-top: 16px;
    padding-right: 4px;
}

@media (min-width: 541px) {
    .css-16swvqp {
        padding: 0px;
        border-bottom: none;
    }
}

.css-16swvqp {
    padding: 12px 0px;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-s51fmo {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    cursor: pointer;
}

.css-s51fmo {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    width: 28px;
    height: 28px;
    border: none;
    border-radius: 50%;
}

.css-84s20f {
    width: 22px;
    height: 22px;
    background-color: rgb(0, 0, 0);
    border-radius: 50%;
    box-shadow: none;
}

.css-10iqra1 > :not(style) ~ :not(style) {
    margin-left: 6px;
}

.css-10iqra1 {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    cursor: pointer;
}

.css-1k1p1k1 {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-m-font-family);
    font-weight: var(--ruler-semantic-typography-text-m-font-weight);
    line-height: var(--ruler-semantic-typography-text-m-line-height);
    font-size: var(--ruler-semantic-typography-text-m-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-wd9bws {
    width: 22px;
    height: 22px;
    background-color: rgb(33, 186, 33);
    border-radius: 50%;
    box-shadow: none;
}

.css-v6pf3e {
    width: 22px;
    height: 22px;
    background-color: rgb(113, 132, 47);
    border-radius: 50%;
    box-shadow: none;
}

.css-zfxkzo {
    width: 22px;
    height: 22px;
    background-color: rgb(53, 133, 194);
    border-radius: 50%;
    box-shadow: none;
}

.css-1v3caum {
    padding-top: 16px;
}

.css-j7qwjs {
    display: flex;
    flex-direction: column;
}

.css-rbgw40 {
    display: flex;
    flex-direction: row-reverse;
    -webkit-box-pack: justify;
    justify-content: space-between;
    gap: var(--ruler-scale-dimension-100);
    cursor: pointer;
    padding: 17px 0px;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-ox746a {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    box-sizing: border-box;
    border-radius: var(--ruler-scale-corner-radius-full);
    width: 18px;
    height: 18px;
    min-width: 18px;
    min-height: 18px;
    max-width: 18px;
    max-height: 18px;
    border: 2px solid var(--ruler-semantic-color-border-line);
    background: var(--ruler-semantic-color-fill-silent);
}

.css-1kjeyij {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
    padding-top: 16px;
}

.css-r8yr5t {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-medium-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-medium-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-medium-line-height);
    font-size: var(--ruler-semantic-typography-text-l-medium-font-size);
    color: var(--ruler-semantic-color-text-primary);
    margin-bottom: 4px;
}

.css-r8yr5t span {
    color: var(--ruler-semantic-color-common-accent);
    margin-left: 2px;
}

.css-14n7qyk {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    padding: var(--ruler-scale-dimension-150) var(--ruler-scale-dimension-125) var(--ruler-scale-dimension-150) var(--ruler-scale-dimension-150);
    border-width: 1px;
    border-style: solid;
    border-image: initial;
    height: 44px;
    box-sizing: border-box;
    border-radius: 4px;
    background-color: var(--ruler-semantic-color-fill-disabled);
    border-color: var(--ruler-semantic-color-border-line-disabled);
}

.css-1cyeafc:disabled {
    color: var(--ruler-semantic-color-text-disabled);
}

.css-1cyeafc:read-only {
    color: var(--ruler-semantic-color-text-secondary);
}

.css-1cyeafc {
    border: none;
    background-color: transparent;
    outline: none;
    flex: 1 1 0%;
    font-family: var(--ruler-semantic-typography-text-l-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-line-height);
    font-size: var(--ruler-semantic-typography-text-l-font-size);
    padding: 0px;
    margin-left: 4px;
    text-overflow: ellipsis;
}

.css-1lh7cs7 {
    width: 28px;
    height: 28px;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    background-color: transparent;
    border: none;
    outline: none;
}

.css-1qaynhp {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-m-font-family);
    font-weight: var(--ruler-semantic-typography-text-m-font-weight);
    line-height: var(--ruler-semantic-typography-text-m-line-height);
    font-size: var(--ruler-semantic-typography-text-m-font-size);
    color: var(--ruler-semantic-color-text-disabled);
}

.css-1kjeyij > :not(style) ~ :not(style) {
    margin-top: 16px;
}

.css-1cyeafc:disabled {
    color: var(--ruler-semantic-color-text-disabled);
}

.css-1x09jzi > :not(style) ~ :not(style) {
    margin-top: 48px;
}

.css-bhw5do {
    padding: var(--ruler-scale-dimension-225) 0;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-x5vkgf {
    display: flex;
    flex-direction: row-reverse;
    -webkit-box-pack: justify;
    justify-content: space-between;
    gap: var(--ruler-scale-dimension-100);
    cursor: pointer;
}

.css-1midve5 {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    box-sizing: border-box;
    border-radius: 2px;
    width: 18px;
    height: 18px;
    min-width: 18px;
    min-height: 18px;
    max-width: 18px;
    max-height: 18px;
    border: 1px solid var(--ruler-semantic-color-border-line);
    background: var(--ruler-semantic-color-fill-silent);
}

.css-1midve5 path, .css-1midve5 rect {
    fill: var(--ruler-semantic-color-text-tertiary);
}

.css-zn9jx2 {
    overflow: hidden scroll;
    max-height: 345px;
    padding-top: 16px;
    padding-right: 4px;
}

@media (min-width: 541px) {
    .css-1fjmfvp {
        padding: 14px 0px;
    }
}

.css-1fjmfvp {
    position: relative;
    padding: var(--ruler-scale-dimension-150) 0;
    border-bottom: 1px solid var(--ruler-semantic-color-border-divider);
}

.css-jrjk04 {
    align-items: flex-start;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-jrjk04 > :not(style) ~ :not(style) {
    margin-top: 6px;
}

.css-qz1c7d {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-xs-font-family);
    font-weight: var(--ruler-semantic-typography-text-xs-font-weight);
    line-height: var(--ruler-semantic-typography-text-xs-line-height);
    font-size: var(--ruler-semantic-typography-text-xs-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-ji86f3 > :not(style) ~ :not(style) {
    margin-top: 24px;
}

.css-p40hl8 {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    width: 220px;
    padding: 40px 0px;
    background: linear-gradient(rgba(255, 255, 255, 0) 0%, rgb(255, 255, 255) 51.56%, rgb(255, 255, 255) 100%);
}

.css-18qls73 > :not(style) ~ :not(style) {
    margin-left: 60px;
}

.css-8atqhb {
    width: 100%;
}

.css-7f211h {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    min-height: 42px;
    border: 1px solid #e4e4e4;
}

.css-bjuzxk {
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
    flex: 1 1 0%;
    -webkit-box-align: center;
    align-items: center;
    height: 100%;
    min-height: 42px;
    border-right: 1px solid var(--ruler-semantic-color-border-line);
}

.css-qkyj89 {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-flow: wrap;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-8f3egq {
    position: relative;
    padding: 11px 20px;
}

.css-izpnhq {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-bold-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-bold-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-bold-line-height);
    font-size: var(--ruler-semantic-typography-text-l-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-17x39sj {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-text-l-font-family);
    font-weight: var(--ruler-semantic-typography-text-l-font-weight);
    line-height: var(--ruler-semantic-typography-text-l-line-height);
    font-size: var(--ruler-semantic-typography-text-l-font-size);
    color: var(--ruler-semantic-color-text-secondary);
}

.css-1ohriwx {
    align-self: flex-start;
    max-width: 120px;
}

.css-1xg2rii {
    position: relative;
    width: 100%;
}

@media (max-width: 1024px) {
    .css-1hjflnh {
        grid-template-columns: repeat(3, 1fr);
    }
}

@media (max-width: 1640px) {
    .css-1hjflnh {
        grid-template-columns: repeat(4, 1fr);
    }
}
@media (max-width: 1920px) {
    .css-1hjflnh {
        grid-template-columns: repeat(5, 1fr);
    }
}

.css-1hjflnh {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 60px 20px;
    padding: 24px 0px 60px;
}

.css-1teigi4 {
    position: relative;
    overflow: hidden;
    font-size: 13px;
    line-height: 1.4;
}

.css-5cm1aq {
    color: rgb(0, 0, 0);
}

.css-17mq37v {
    position: relative;
    overflow: hidden;
    padding-top: 100%;
    background-color: rgb(244, 244, 244);
}

.css-17mq37v img {
    position: absolute;
    top: 0px;
    left: 0px;
    aspect-ratio: 1 / 1;
    width: 100%;
    font-size: 0px;
    object-fit: cover;
}

.css-1drk60u {
    position: relative;
    padding-top: 14px;
}

.css-1ktbrl2 {
    overflow: hidden;
    display: block;
    margin: 2px 0px 6px;
    padding-right: 32px;
    font-size: 11px;
    font-weight: 700;
    line-height: 13px;
    color: rgb(0, 0, 0);
    text-overflow: ellipsis;
    white-space: nowrap;
}

.css-qoj3dd h5 {
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    padding-right: 26px;
    font-size: 12px;
    font-weight: 400;
    word-break: break-all;
    overflow-wrap: break-word;
    white-space: normal;
    visibility: visible;
    -webkit-line-clamp: 2;
}

.css-qthr7l {
    margin-top: 6px;
    font-size: 14px;
    font-weight: 500;
    line-height: 14px;
}

.css-19cy31c {
    margin-top: 1px;
    line-height: 19px;
}

.css-1nr17il {
    margin-right: 5px;
    color: rgb(255, 72, 0);
}

.css-s9qxfl {
    font-weight: inherit;
    line-height: 19px;
    color: unset;
}

.css-h1wwjr {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    height: 15px;
    margin-top: 16px;
    font-size: 11px;
    color: rgb(93, 93, 93);
}

.css-5q6llm {
    display: flex;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    font-size: inherit;
    color: inherit;
}

.css-5q6llm > svg + div {
    margin-left: 4px;
}

.css-h1wwjr > button + a {
    margin-left: 27px;
}

.css-1o3cxb9 {
    color: inherit;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    line-height: 1;
}

.css-ik4rmz {
    margin-right: 4px;
}

.css-ik4rmz path {
    fill: none;
    stroke: rgb(93, 93, 93);
}

.css-1p5c1f6 {
    margin-right: 2px;
    color: rgb(255, 72, 0);
}

@media (min-width: 541px) {
    .css-n2r913 {
        display: none;
    }
}

.css-n2r913 {
    width: 32px;
    height: 28px;
    font-size: inherit;
    color: inherit;
    display: flex;
    align-items: flex-end;
    justify-content: left;
    position: absolute;
    top: 6px;
    right: 0px;
    line-height: 1;
}

.css-kkyj92 {
    display: flex;
    margin-top: 6px;
}

.css-1x5pky6 {
    padding: 0px 6px;
    font-size: 10px;
    font-weight: 500;
    line-height: 18px;
    color: rgb(29, 29, 29);
    background-color: rgb(244, 244, 244);
    border-radius: 1px;
}

.css-1rsgy8u {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
}

.css-134sqpg {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
}

.css-qty8jo {
    -webkit-box-align: center;
    align-items: center;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-1oo08bm {
    width: 24px;
    height: 24px;
    min-width: 24px;
    min-height: 24px;
}

.css-1oo08bm * {
    fill: var(--ruler-semantic-color-text-disabled);
}

.css-134sqpg > :not(style) ~ :not(style) {
    margin-left: 24px;
}

.css-b8i4ra {
    -webkit-box-align: stretch;
    align-items: stretch;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: start;
    justify-content: flex-start;
}

.css-19xy1bb {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-title-xxl-bold-font-family);
    font-weight: var(--ruler-semantic-typography-title-xxl-bold-font-weight);
    line-height: var(--ruler-semantic-typography-title-xxl-bold-line-height);
    font-size: var(--ruler-semantic-typography-title-xxl-bold-font-size);
    color: var(--ruler-semantic-color-text-primary);
}

.css-b8i4ra > :not(style) ~ :not(style) {
    margin-left: 24px;
}

.css-1rrsl2y {
    display: inline-block;
    font-family: var(--ruler-semantic-typography-title-xxl-medium-font-family);
    font-weight: var(--ruler-semantic-typography-title-xxl-medium-font-weight);
    line-height: var(--ruler-semantic-typography-title-xxl-medium-line-height);
    font-size: var(--ruler-semantic-typography-title-xxl-medium-font-size);
    color: var(--ruler-semantic-color-text-disabled);
}

.css-2hmgrn {
    width: 24px;
    height: 24px;
    min-width: 24px;
    min-height: 24px;
}

.css-2hmgrn * {
    fill: var(--ruler-semantic-color-text-primary);
}


</style>
<style>
body {
	min-height: 190vh;
	max-width: 100vw;
}

#wrap {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	/* 위  display는  웹킷(Webkit) 엔진을 사용하는 브라우저에서 Flexbox 레이아웃을 지원하기 위한 속성입니다. 
        Flexbox를 사용하여 요소를 배치 및 정렬할 수 있게 해줍니다. 하지만 최신의 브라우저에서는 -webkit-box 대신에 
        display: flex;를 사용하는 것이 일반적입니다. */
	display: flex;
	min-width: 900px;
	padding: 40px 50px 90px
}

.kids_title_left a.large-ctgr {
	color: black;
	text-decoration: none; /* 클릭 후에도 줄 안생기게 하는 css */
}

.kids_title_left a.large-ctgr:link, .kids_title_left a.large-ctgr:visited,
	.kids_title_left a.large-ctgr:hover, .kids_title_left a.large-ctgr:focus,
	.kids_title_left a.large-ctgr:active {
	color: black;
	text-decoration: none;
	/* 클릭 후 기존 색 유지 css */
}

#kids-left {
	width: 200px;
	padding-right: 80px;
	box-sizing: content-box;
}

.kids_title_left {
	width: 200px;
	padding-bottom: 12px;
	border-bottom: 4px solid #000000;
	font-size: 23px;
	font-weight: 800;
	line-height: 1.25;
}

.left-menu {
	margin-top: 16px;
	list-style-type: none;
	padding: 0px;
}

.medium-ctgr {
	display: block;
	width: 100%;
	line-height: 2.13;
	font-size: 16px;
	color: rgb(93, 93, 93);
	text-align: left;
	outline: none;
	font-weight: 200;
	text-decoration: none;
	cursor: pointer;
}

#kids-right {
	flex: 1;
}

.kids_title_right {
	margin-bottom: 36px;
	font-size: 34px;
	font-weight: 600;
	line-height: 41px;
}

.kids_radio_box {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	flex-wrap: wrap;
	width: 100%;
	border: 1px solid rgb(212, 212, 212);
	background-color: rgb(255, 255, 255);
}

.aa {
	display: flex;
	flex-wrap: wrap;
	list-style: none;
}

.aa>span {
	min-height: 10px;
	line-height: 10px;
	display: flex;
	align-items: center;
	justify-content: center;
	position: relative;
	overflow: visible;
	height: 18px;
	margin-right: 10px; /* 간격 조절 */
	padding-right: 15px; /* 구분선 위치 조절 */
	border-right: 1px solid #ccc; /* 구분선 스타일 */
	font-size: 12px;
}

.aa>span:last-child {
	margin-right: 0;
	padding-right: 0;
	border-right: none;
}

input[type="radio"] {
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	width: 0;
	height: 0;
	position: absolute;
	opacity: 0;
}

label {
	cursor: pointer;
}

input[type="radio"]:checked+label {
	font-weight: bold; /* 체크된 상태일 때 텍스트의 굵기를 변경할 수 있다 */
}

.bb {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-align-items: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	height: 31px;
	padding: 0px;
	border-radius: 16.5px;
	border: solid 1px #e4e4e4;
	font-family: AppleSDGothicNeo;
	font-size: 13px;
	font-weight: 500;
	background-color: #ffffff;
	color: #5d5d5d;
	width: 60px
}

.photo_list {
	display: grid;
	grid-template-columns: repeat(20, 1fr);
	margin-top: 36px;
	counter-reset: list-number;
	grid-gap: 40px 20px;
	min-height: 800px;
	padding: 0px;
}

.css-1hjflnh {
	display: grid;
	grid-template-columns: repeat(6, 1fr);
	gap: 60px 20px;
	padding: 24px 0 60px;
}

.photo1 {
	position: relative;
	list-style: none;
	background-color: white;
	grid-column: auto/span 4;
}

.photo {
	position: relative;
	list-style: none;
	background-color: white;
	grid-column: auto/span 3;
}

.cc {
	position: relative;
	font-size: 12px;
	line-height: 1.4;
}

.dd {
	position: relative;
	overflow: hidden;
	padding-top: 100%;
	background-color: rgb(244, 244, 244);
}

.ff {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
}

@media ( max-width : 540px) { <
	style>.gg {
		padding: 16px 12px 0px;
	}
}

.gg {
	position: relative;
	padding-top: 14px;
}

.hh {
	overflow: hidden;
	display: block;
	margin-bottom: 4px;
	font-size: 11px;
	font-weight: 700;
	line-height: 1.4;
	color: rgb(0, 0, 0);
	text-overflow: ellipsis;
	white-space: nowrap;
}

.jj {
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	max-height: calc(4.2em);
	font-size: inherit;
	font-weight: 300;
	overflow-wrap: break-word;
	white-space: normal;
	-webkit-line-clamp: 3
}

.jj1 {
	margin-top: 12px;
	font-size: 14px;
	font-weight: 500;
	line-height: 1;
}

.jjj {
	line-height: 1;
	font-size: 11px;
	font-weight: normal;
	color: rgb(196, 196, 196);
	text-decoration: line-through;
}

.01 {
	margin-top: 4px;
}

.kkk {
	margin-right: 5px;
	color: rgb(255, 72, 0);
}

.qqq {
	margin-top: 12px;
	font-size: 14px;
	font-weight: 700;
	line-height: 1;
}

.eee {
	display: flex;
	margin-top: 6px;
	list-style: none;
	padding: 0px;
}

.eee>li {
	padding: 0px 6px;
	font-size: 10px;
	font-weight: 500;
	line-height: 18px;
	color: rgb(29, 29, 29);
	background-color: rgb(244, 244, 244);
	border-radius: 1px;
}

.ppp {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	height: 15px;
	margin-top: 16px;
	font-size: 11px;
	color: rgb(93, 93, 93);
}

.ppp>a {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	margin-left: 5px;
	color: inherit;
}

.styled-select {
	display: block;
	width: 100%;
	padding: 10px;
	font-size: 16px;
	line-height: 1.3;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	background-color: #fff;
	background-image:
		url('data:image/svg+xml;utf8,<svg fill="#000000" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
	background-repeat: no-repeat;
	background-position: right 10px center;
	border: 1px solid #ccc;
	border-radius: 5px;
	outline: none;
	cursor: pointer;
}

.styled-select:hover {
	border-color: #999;
}

.styled-select:focus {
	border-color: #66afe9;
	box-shadow: 0 0 0 3px rgba(102, 175, 233, 0.6);
}

.heart {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	font-size: inherit;
	color: inherit;
}

.ppp>.heart+.review {
	margin-left: 27px;
}

.review {
	color: inherit;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	line-height: 1;
}

.review-point {
	margin-right: 2px;
	color: rgb(255, 72, 0);
}

.heart>svg+.jj {
	margin-left: 4px;
}

.j h5 {
	overflow: hidden;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	padding-right: 26px;
	font-size: 12px;
	font-weight: 400;
	word-break: break-all;
	overflow-wrap: break-word;
	white-space: normal;
	visibility: visible;
	-webkit-line-clamp: 2;
}

.widget {
	-webkit-box-align: center;
	align-items: center;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: start;
	justify-content: flex-start;
	min-height: 42px;
	border: 1px solid gray;
}

.widget-gap {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: start;
	justify-content: flex-start;
	flex: 1 1 0%;
	-webkit-box-align: center;
	align-items: center;
	height: 100%;
	min-height: 42px;
	border-right: 1px solid gray;
}

button {
	border: 0;
	background: transparent;
	cursor: pointer;
	outline: none;
}

.button:focus, .button:active {
	background-color: var(- -dark-black);
}

.button:hover {
	background-color: darken(var(- -button-color), 10%);
}

.smallCategory {
	-webkit-box-align: center;
	align-items: center;
	display: flex;
	flex-flow: wrap;
	-webkit-box-pack: start;
	justify-content: flex-start;
}

.smallCategory_btn {
	position: relative;
	padding: 11px 20px;
}

.s_span {
	display: inline-block;
	font-family: var(- -ruler-semantic-typography-text-l-bold-font-family);
	font-weight: var(- -ruler-semantic-typography-text-l-bold-font-weight);
	line-height: var(- -ruler-semantic-typography-text-l-bold-line-height);
	font-size: var(- -ruler-semantic-typography-text-l-bold-font-size);
	color: #737272;
}

.s_span::after {
	content: "";
	position: absolute;
	right: 0px;
	width: 1px;
	height: 20px;
	background: var(- -ruler-semantic-color-border-line);
	color: #e4e4e4;
}
</style>
<style>
/* Styles specific to top.jsp */
.th {
	margin: 10px;
	padding-left: 20px;
	display: flex;
	align-items: center;
}

.th p {
	font-size: 30px;
	margin: 0;
	padding: 0;
}

.tm {
	background-color: #444;
	color: #fff;
	padding: 10px;
	margin-left: auto;
	margin-right: 20px;
}

.tm a {
	color: #fff;
	text-decoration: none;
	margin: 0 10px;
}

.tm a:hover {
	text-decoration: underline;
}

.ma, .mb {
	list-style-type: none;
	padding: 0;
	margin: 0;
	margin-top: 10px;
	display: flex;
	flex-wrap: wrap;
	margin-left: 20px;
}

.ma li, .mb li {
	margin-left: 10px;
	white-space: nowrap;
}

.ma li a, .mb li a {
	font-size: 20px;
	color: black;
}

.ma li a {
	font-size: 30px;
	text-decoration: none;
}

.ma li a h3 {
	margin-right: 10px;
}

.mb li a {
	text-decoration: none;
}

.mb li a:hover {
	text-decoration: underline;
}

.ma li a:hover {
	text-decoration: underline;
}

body, input, select, textarea, button, a {
	-webkit-text-size-adjust: none;
	font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic,
		'나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
	</header>
	<div id="wrap">
		<div id="kids-left">
			<button></button>
			<div>
				<!-- <button></button>  화면이 작아졌을 때 #kids-left메뉴 나타나게 하는거 -->
				<h2 class="kids_title_left">
					<a class="large-ctgr"
						href="http://localhost/jspPro/sentiBoard/view/kidsBoardView.jsp">레저</a>
				</h2>
				<!-- <ul class="left_bar_meue" > -->
				<ul class="left-menu">
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_all.jsp">ALL</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_new.jsp">NEW</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_camping.jsp">캠핑</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_hiking.jsp">등산,하이킹</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_golf.jsp">골프</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_swiming.jsp">수영</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_running.jsp">러닝</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_indoor-excise.jsp">실내운동</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_travel.jsp">여행</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_tennis.jsp">테니스</a></li>
					<li><a class="medium-ctgr"
						data-url="http://localhost/jspPro/sentiBoard/list/leisure_bike.jsp">자전거</a></li>

				</ul>
				<!-- </ul> -->
			</div>
		</div>

		<div id="leisure-right">
			<div class="e1b776b60 css-7f211h">
				<div class="e1b776b63 css-bjuzxk">
					<div class="e1tv93b50 css-qkyj89">
						
					</div>
				</div>
				<div class="css-1ohriwx e1b776b61">
					<div class="css-1xg2rii e1n0dpng0">
						<div role="button" class="css-79elbk e1n0dpng3">
							<input class="e1n0dpng1 css-mwdg56 e1u1pays0"
								autocapitalize="none" type="text" readonly="" value="추천순">
							<svg class="e1n0dpng2 css-cs4h3q e11s8l6m0"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 16">
								<g fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)"
									stroke-width="3">
								<path d="M28 1L13.97 15 0 1.058"></path></g></svg>
						</div>
					</div>
				</div>
			</div>
			<!-- ul -->
			
		</div>
	</div>
	<br>
	<footer>
		<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
	</footer>
	<script>
		$(document)
				.ready(
						function() {
							$('.medium-ctgr')
									.click(
											function(e) {
												e.preventDefault(); // 기본 동작 방지
												var urlToRequest = $(this)
														.data('url'); // 요청 URL을 data-url 속성에서 가져옵니다.

												$
														.ajax({
															type : "POST",
															url : urlToRequest,
															data : {
															// 필요하다면 서버에 보낼 데이터
															},
															success : function(
																	response) {
																// .photo_list 내용 업데이트
																var updatedPhotoList = $(
																		response)
																		.find(
																				'.photo_list')
																		.html();
																$('.photo_list')
																		.html(
																				updatedPhotoList);

																// .e1b776b60  내용 업데이트
																var updatedWidget = $(
																		response)
																		.find(
																				'.e1b776b60 ')
																		.html();
																$('.e1b776b60')
																		.html(
																				updatedWidget);
															},
															error : function(
																	xhr,
																	status,
																	error) {
																alert('Error loading new content: '
																		+ error);
															}
														});
											});
						});
	</script>
</body>
</html>