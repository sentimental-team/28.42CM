<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="http://localhost/jspPro/images/SiSt.ico">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
    :root {
        --ruler-scale-color-gray-00: #fff;
        --ruler-scale-color-gray-100: #f4f4f4;
        --ruler-scale-color-gray-200: #e4e4e4;
        --ruler-scale-color-gray-300: #c4c4c4;
        --ruler-scale-color-gray-400: #a0a0a0;
        --ruler-scale-color-gray-500: #5d5d5d;
        --ruler-scale-color-gray-600: #474747;
        --ruler-scale-color-gray-700: #303030;
        --ruler-scale-color-gray-800: #27272a;
        --ruler-scale-color-gray-900: #19191a;
        --ruler-scale-color-gray-950: #000;
        --ruler-scale-color-gray-alpha-200: rgba(93,93,93,.08);
        --ruler-scale-color-gray-alpha-300: rgba(93,93,93,.16);
        --ruler-scale-color-gray-alpha-400: rgba(93,93,93,.24);
        --ruler-scale-color-red-100: #ffefeb;
        --ruler-scale-color-red-200: #ffbfaa;
        --ruler-scale-color-red-300: #ff916c;
        --ruler-scale-color-red-400: #ff6933;
        --ruler-scale-color-red-500: #ff4800;
        --ruler-scale-color-red-600: #d53f00;
        --ruler-scale-color-red-700: #ab3803;
        --ruler-scale-color-red-800: #823107;
        --ruler-scale-color-red-900: #582609;
        --ruler-scale-color-red-950: #2e1608;
        --ruler-scale-color-red-alpha-200: rgba(255,72,0,.08);
        --ruler-scale-color-red-alpha-300: rgba(255,72,0,.16);
        --ruler-scale-color-red-alpha-400: rgba(255,72,0,.24);
        --ruler-scale-color-blue-100: #ebf1ff;
        --ruler-scale-color-blue-200: #b8cdff;
        --ruler-scale-color-blue-300: #86a5ff;
        --ruler-scale-color-blue-400: #5b7fff;
        --ruler-scale-color-blue-500: #375fff;
        --ruler-scale-color-blue-600: #203ff6;
        --ruler-scale-color-blue-700: #1025e5;
        --ruler-scale-color-blue-800: #0611bd;
        --ruler-scale-color-blue-900: #010474;
        --ruler-scale-color-blue-950: #003;
        --ruler-scale-color-blue-alpha-200: rgba(52,95,255,.08);
        --ruler-scale-color-blue-alpha-300: rgba(52,95,255,.16);
        --ruler-scale-color-blue-alpha-400: rgba(52,95,255,.24);
        --ruler-scale-color-yellow-100: #fff7f0;
        --ruler-scale-color-yellow-200: #ffdfb9;
        --ruler-scale-color-yellow-300: #ffc97f;
        --ruler-scale-color-yellow-400: #ffb741;
        --ruler-scale-color-yellow-500: #ffa800;
        --ruler-scale-color-yellow-600: #d18d16;
        --ruler-scale-color-yellow-700: #a37021;
        --ruler-scale-color-yellow-800: #755322;
        --ruler-scale-color-yellow-900: #47341b;
        --ruler-scale-color-yellow-950: #19130c;
        --ruler-scale-color-green-100: #eefee6;
        --ruler-scale-color-green-200: #c2eeb2;
        --ruler-scale-color-green-300: #81dc71;
        --ruler-scale-color-green-400: #3fcb3c;
        --ruler-scale-color-green-500: #12ba23;
        --ruler-scale-color-green-600: #139e14;
        --ruler-scale-color-green-700: #1e8215;
        --ruler-scale-color-green-800: #246616;
        --ruler-scale-color-green-900: #234a15;
        --ruler-scale-color-green-950: #1b2e11;
        --ruler-scale-dimension-font-size-25: 10px;
        --ruler-scale-dimension-font-size-50: 11px;
        --ruler-scale-dimension-font-size-75: 12px;
        --ruler-scale-dimension-font-size-100: 13px;
        --ruler-scale-dimension-font-size-125: 14px;
        --ruler-scale-dimension-font-size-150: 15px;
        --ruler-scale-dimension-font-size-200: 16px;
        --ruler-scale-dimension-font-size-250: 18px;
        --ruler-scale-dimension-font-size-300: 20px;
        --ruler-scale-dimension-font-size-350: 22px;
        --ruler-scale-dimension-font-size-400: 24px;
        --ruler-scale-dimension-font-size-500: 28px;
        --ruler-scale-dimension-font-size-550: 30px;
        --ruler-scale-dimension-font-size-600: 32px;
        --ruler-scale-dimension-font-size-1000: 48px;
        --ruler-scale-dimension-25: 2px;
        --ruler-scale-dimension-50: 4px;
        --ruler-scale-dimension-75: 6px;
        --ruler-scale-dimension-100: 8px;
        --ruler-scale-dimension-125: 10px;
        --ruler-scale-dimension-150: 12px;
        --ruler-scale-dimension-200: 16px;
        --ruler-scale-dimension-225: 18px;
        --ruler-scale-dimension-250: 20px;
        --ruler-scale-dimension-300: 24px;
        --ruler-scale-dimension-350: 28px;
        --ruler-scale-dimension-375: 30px;
        --ruler-scale-dimension-400: 32px;
        --ruler-scale-dimension-500: 40px;
        --ruler-scale-dimension-600: 48px;
        --ruler-scale-dimension-700: 56px;
        --ruler-scale-dimension-750: 60px;
        --ruler-scale-font-weight-thin: 100;
        --ruler-scale-font-weight-extraLight: 200;
        --ruler-scale-font-weight-light: 300;
        --ruler-scale-font-weight-regular: 400;
        --ruler-scale-font-weight-medium: 500;
        --ruler-scale-font-weight-semibold: 600;
        --ruler-scale-font-weight-bold: 700;
        --ruler-scale-font-weight-extraBold: 800;
        --ruler-scale-letter-spacing: 0;
        --ruler-scale-line-height-1: 100%;
        --ruler-scale-line-height-2: 120%;
        --ruler-scale-line-height-3: 136%;
        --ruler-scale-line-height-4: 140%;
        --ruler-scale-line-height-5: 150%;
        --ruler-scale-line-height-6: 160%;
        --ruler-scale-corner-radius-25: 2px;
        --ruler-scale-corner-radius-50: 4px;
        --ruler-scale-corner-radius-75: 6px;
        --ruler-scale-corner-radius-100: 8px;
        --ruler-scale-corner-radius-200: 16px;
        --ruler-scale-corner-radius-250: 20px;
        --ruler-scale-corner-radius-full: 9999px;
        --ruler-static-scale-color-white: #fff;
        --ruler-static-scale-color-white-alpha-200: #ffffff20;
        --ruler-static-scale-color-white-alpha-500: #ffffff80;
        --ruler-static-scale-color-white-alpha-900: #ffffffe6;
        --ruler-static-scale-color-black: #000;
        --ruler-static-scale-color-black-alpha-200: #00000020;
        --ruler-static-scale-color-black-alpha-500: #00000080;
        --ruler-static-scale-color-black-alpha-900: #000000e6;
        --ruler-static-scale-font-family-pretendard: "Pretendard Variable", Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
        --ruler-static-scale-font-family-29cm-default-font: var(--ruler-static-scale-font-family-pretendard);
        --ruler-semantic-color-common-on-black: var(--ruler-static-scale-color-black);
        --ruler-semantic-color-common-on-black-hover: var(--ruler-static-scale-color-black-alpha-900);
        --ruler-semantic-color-common-on-black-pressed: var(--ruler-static-scale-color-black-alpha-900);
        --ruler-semantic-color-common-on-white: var(--ruler-static-scale-color-white);
        --ruler-semantic-color-common-on-white-hover: var(--ruler-static-scale-color-white-alpha-900);
        --ruler-semantic-color-common-on-white-pressed: var(--ruler-static-scale-color-white-alpha-900);
        --ruler-semantic-color-common-interactive-low: var(--ruler-scale-color-blue-alpha-200);
        --ruler-semantic-color-common-interactive: var(--ruler-scale-color-blue-500);
        --ruler-semantic-color-common-interactive-hover: var(--ruler-scale-color-blue-400);
        --ruler-semantic-color-common-interactive-pressed: var(--ruler-scale-color-blue-400);
        --ruler-semantic-color-common-negative: var(--ruler-scale-color-red-600);
        --ruler-semantic-color-common-negative-hover: var(--ruler-scale-color-red-400);
        --ruler-semantic-color-common-negative-pressed: var(--ruler-scale-color-red-400);
        --ruler-semantic-color-common-accent-low: var(--ruler-scale-color-red-alpha-200);
        --ruler-semantic-color-common-accent: var(--ruler-scale-color-red-500);
        --ruler-semantic-color-text-primary: var(--ruler-scale-color-gray-950);
        --ruler-semantic-color-text-primary-hover: var(--ruler-scale-color-gray-600);
        --ruler-semantic-color-text-primary-pressed: var(--ruler-scale-color-gray-600);
        --ruler-semantic-color-text-secondary: var(--ruler-scale-color-gray-600);
        --ruler-semantic-color-text-secondary-hover: var(--ruler-scale-color-gray-500);
        --ruler-semantic-color-text-secondary-pressed: var(--ruler-scale-color-gray-500);
        --ruler-semantic-color-text-tertiary: var(--ruler-scale-color-gray-400);
        --ruler-semantic-color-text-tertiary-hover: var(--ruler-scale-color-gray-300);
        --ruler-semantic-color-text-tertiary-pressed: var(--ruler-scale-color-gray-300);
        --ruler-semantic-color-text-disabled: var(--ruler-scale-color-gray-300);
        --ruler-semantic-color-text-on-color: var(--ruler-scale-color-gray-00);
        --ruler-semantic-color-background-low: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-background-default: var(--ruler-scale-color-gray-00);
        --ruler-semantic-color-background-default-black: var(--ruler-static-scale-color-black);
        --ruler-semantic-color-fill-primary: var(--ruler-scale-color-gray-950);
        --ruler-semantic-color-fill-primary-hover: var(--ruler-scale-color-gray-800);
        --ruler-semantic-color-fill-primary-pressed: var(--ruler-scale-color-gray-800);
        --ruler-semantic-color-fill-secondary: var(--ruler-scale-color-gray-700);
        --ruler-semantic-color-fill-tertiary: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-fill-silent: var(--ruler-scale-color-gray-00);
        --ruler-semantic-color-fill-silent-hover: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-fill-silent-pressed: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-fill-surface-contents: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-fill-surface-floating: var(--ruler-scale-color-gray-950);
        --ruler-semantic-color-fill-surface-dialog: var(--ruler-scale-color-gray-00);
        --ruler-semantic-color-fill-surface-sheet: var(--ruler-scale-color-gray-00);
        --ruler-semantic-color-fill-surface-black: var(--ruler-static-scale-color-black);
        --ruler-semantic-color-fill-disabled: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-border-divider-strong: var(--ruler-scale-color-gray-950);
        --ruler-semantic-color-border-divider: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-border-line: var(--ruler-scale-color-gray-200);
        --ruler-semantic-color-border-line-hover: var(--ruler-scale-color-gray-400);
        --ruler-semantic-color-border-line-pressed: var(--ruler-scale-color-gray-400);
        --ruler-semantic-color-border-line-selected: var(--ruler-scale-color-gray-950);
        --ruler-semantic-color-border-line-disabled: var(--ruler-scale-color-gray-100);
        --ruler-semantic-color-overlay-dimmed: var(--ruler-static-scale-color-black-alpha-500);
        --ruler-semantic-typography-title-xxl-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-xxl-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-title-xxl-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-xxl-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-xxl-font-size: var(--ruler-scale-dimension-font-size-550);
        --ruler-semantic-typography-title-xxl-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-xxl-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-title-xxl-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-xxl-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-xxl-bold-font-size: var(--ruler-scale-dimension-font-size-550);
        --ruler-semantic-typography-title-xxl-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-xxl-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-title-xxl-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-xxl-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-xxl-medium-font-size: var(--ruler-scale-dimension-font-size-550);
        --ruler-semantic-typography-title-xl-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-xl-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-title-xl-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-xl-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-xl-bold-font-size: var(--ruler-scale-dimension-font-size-500);
        --ruler-semantic-typography-title-xl-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-xl-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-title-xl-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-xl-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-xl-medium-font-size: var(--ruler-scale-dimension-font-size-500);
        --ruler-semantic-typography-title-l-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-l-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-title-l-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-l-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-l-bold-font-size: var(--ruler-scale-dimension-font-size-400);
        --ruler-semantic-typography-title-l-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-l-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-title-l-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-l-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-l-medium-font-size: var(--ruler-scale-dimension-font-size-400);
        --ruler-semantic-typography-title-m-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-m-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-title-m-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-m-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-m-bold-font-size: var(--ruler-scale-dimension-font-size-350);
        --ruler-semantic-typography-title-m-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-m-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-title-m-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-m-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-m-medium-font-size: var(--ruler-scale-dimension-font-size-350);
        --ruler-semantic-typography-title-s-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-s-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-title-s-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-s-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-s-bold-font-size: var(--ruler-scale-dimension-font-size-300);
        --ruler-semantic-typography-title-s-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-s-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-title-s-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-s-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-s-medium-font-size: var(--ruler-scale-dimension-font-size-300);
        --ruler-semantic-typography-title-xs-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-xs-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-title-xs-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-xs-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-xs-bold-font-size: var(--ruler-scale-dimension-font-size-250);
        --ruler-semantic-typography-title-xs-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-title-xs-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-title-xs-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-title-xs-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-title-xs-medium-font-size: var(--ruler-scale-dimension-font-size-250);
        --ruler-semantic-typography-text-xxl-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xxl-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-text-xxl-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xxl-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-xxl-font-size: var(--ruler-scale-dimension-font-size-200);
        --ruler-semantic-typography-text-xxl-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xxl-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-text-xxl-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xxl-bold-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-xxl-bold-font-size: var(--ruler-scale-dimension-font-size-200);
        --ruler-semantic-typography-text-xxl-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xxl-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-text-xxl-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xxl-medium-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-xxl-medium-font-size: var(--ruler-scale-dimension-font-size-200);
        --ruler-semantic-typography-text-xl-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xl-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-text-xl-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xl-bold-line-height: var(--ruler-scale-line-height-5);
        --ruler-semantic-typography-text-xl-bold-font-size: var(--ruler-scale-dimension-font-size-150);
        --ruler-semantic-typography-text-xl-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xl-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-text-xl-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xl-medium-line-height: var(--ruler-scale-line-height-5);
        --ruler-semantic-typography-text-xl-medium-font-size: var(--ruler-scale-dimension-font-size-150);
        --ruler-semantic-typography-text-xl-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xl-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-text-xl-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xl-line-height: var(--ruler-scale-line-height-5);
        --ruler-semantic-typography-text-xl-font-size: var(--ruler-scale-dimension-font-size-150);
        --ruler-semantic-typography-text-l-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-l-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-text-l-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-l-bold-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-l-bold-font-size: var(--ruler-scale-dimension-font-size-125);
        --ruler-semantic-typography-text-l-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-l-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-text-l-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-l-medium-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-l-medium-font-size: var(--ruler-scale-dimension-font-size-125);
        --ruler-semantic-typography-text-l-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-l-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-text-l-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-l-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-l-font-size: var(--ruler-scale-dimension-font-size-125);
        --ruler-semantic-typography-text-m-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-m-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-text-m-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-m-bold-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-m-bold-font-size: var(--ruler-scale-dimension-font-size-100);
        --ruler-semantic-typography-text-m-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-m-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-text-m-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-m-medium-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-m-medium-font-size: var(--ruler-scale-dimension-font-size-100);
        --ruler-semantic-typography-text-m-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-m-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-text-m-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-m-line-height: var(--ruler-scale-line-height-4);
        --ruler-semantic-typography-text-m-font-size: var(--ruler-scale-dimension-font-size-100);
        --ruler-semantic-typography-text-s-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-s-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-text-s-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-s-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-text-s-font-size: var(--ruler-scale-dimension-font-size-75);
        --ruler-semantic-typography-text-s-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-s-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-text-s-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-s-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-text-s-bold-font-size: var(--ruler-scale-dimension-font-size-75);
        --ruler-semantic-typography-text-s-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-s-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-text-s-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-s-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-text-s-medium-font-size: var(--ruler-scale-dimension-font-size-75);
        --ruler-semantic-typography-text-xs-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xs-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-text-xs-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xs-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-text-xs-font-size: var(--ruler-scale-dimension-font-size-50);
        --ruler-semantic-typography-text-xs-bold-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xs-bold-font-weight: var(--ruler-scale-font-weight-bold);
        --ruler-semantic-typography-text-xs-bold-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xs-bold-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-text-xs-bold-font-size: var(--ruler-scale-dimension-font-size-50);
        --ruler-semantic-typography-text-xs-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xs-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-text-xs-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xs-medium-line-height: var(--ruler-scale-line-height-3);
        --ruler-semantic-typography-text-xs-medium-font-size: var(--ruler-scale-dimension-font-size-50);
        --ruler-semantic-typography-text-xxs-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xxs-font-weight: var(--ruler-scale-font-weight-regular);
        --ruler-semantic-typography-text-xxs-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xxs-line-height: var(--ruler-scale-line-height-2);
        --ruler-semantic-typography-text-xxs-font-size: var(--ruler-scale-dimension-font-size-25);
        --ruler-semantic-typography-text-xxs-medium-font-family: var(--ruler-static-scale-font-family-29cm-default-font);
        --ruler-semantic-typography-text-xxs-medium-font-weight: var(--ruler-scale-font-weight-medium);
        --ruler-semantic-typography-text-xxs-medium-letter-spacing: var(--ruler-scale-letter-spacing);
        --ruler-semantic-typography-text-xxs-medium-line-height: var(--ruler-scale-line-height-2);
        --ruler-semantic-typography-text-xxs-medium-font-size: var(--ruler-scale-dimension-font-size-25);
    }
    body, input, select, textarea, button, a {
        -webkit-text-size-adjust: none;
        font-family: 'campton', 'Apple SD Gothic Neo', NanumBarunGothic, '나눔바른고딕', Malgun Gothic, '맑은 고딕', dotum, sans-serif;
    }
    div {
        display: block;
        unicode-bidi: isolate;
    }
    html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, menu, nav, output, ruby, section, summary, time, mark, audio, video, input, textarea, button, select {
        margin: 0;
        padding: 0;
    }
    *, *::before, *::after {
        box-sizing: border-box;
    }
    :root {
        --swiper-theme-color: #007aff;
    }
    ol, ul, li {
        list-style: none;
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
    li {
        display: list-item;
        text-align: -webkit-match-parent;
        unicode-bidi: isolate;
    }
    img {
        max-width: 100%;
        border: 0;
        vertical-align: top;
        overflow-clip-margin: content-box;
        overflow: clip;
    }
    h3 {
        display: block;
        font-size: 1.17em;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
        unicode-bidi: isolate;
    }
    p {
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        unicode-bidi: isolate;
    }
    button {
        border: 0;
        background: transparent;
        cursor: pointer;
        outline: none;
    }
    .css-zqyuit {
        display: flex;
        flex-wrap: nowrap;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        margin-bottom: 5px;
        padding-top: 35px;
    }
    .css-70qvj9 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .css-wb64ex {
        display: flex;
    }
    .css-wb64ex:not(:first-of-type)::before {
        color: #5d5d5d;
        font-size: 22px;
        font-weight: 100;
        margin: 0 10px;
        content: '/';
    }
    .css-1iceoh8 {
        position: relative;
        display: inline-block;
        height: 33px;
    }
    .css-azx95j {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        height: 100%;
    }
    .css-8ch9kd {
        font-size: 15px;
        font-weight: 500;
        margin-right: 8px;
        color: #000000;
    }
    .css-9uy14h {
        width: 24px;
        height: 24px;
    }
    .ctgr1 {
        transform: matrix(1, 0, 0, -1, 0, 24);
        fill: none;
        fill-rule: evenodd;
    }
    .ctgr2 {
        d: path("M 0 0 h 24 v 24 H 0 Z");
    }
    .ctgr3 {
        stroke: rgb(0, 0, 0);
        stroke-width: 2;
        d: path("m 16.545 13.727 l -4.554 -4.545 l -4.536 4.526");
    }
    .ctgr4 {
        stroke: rgb(0, 0, 0);
        stroke-width: 2;
        cx: 12;
        cy: 12;
        r: 10;
    }
    :not(svg) {
        transform-origin: 0px 0px;
    }
    
    .css-qoulyp {
        position: absolute;
        display: none;
        z-index: 11;
        width: 170px;
        top: 100%;
        left: 50%;
        transform: translateX(-50%);
        padding: 5px 0;
        background-color: #ffffff;
        border: 1px solid #303033;
    }
    .css-uio8sw {
        min-width: 900px;
        max-width: 1300px;
        margin: 0 auto;
        padding: 40px 50px 0;
    }
    .css-1ux6qe5 {
        margin-bottom: 16px;
    }
    .css-y49a97 {
        position: relative;
        display: flex;
        padding-right: 80px;
    }
    .css-k95f3n {
        display: inline-flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .css-82vwid {
        flex-shrink: 0;
        width: 74px;
        height: 74px;
        object-fit: cover;
    }
    .css-14c9ube {
        overflow: hidden;
        display: flex;
        flex-direction: column;
        width: 100%;
        margin-left: 14px;
    }
    a:-webkit-any-link {
        color: -webkit-link;
        cursor: pointer;
    }
    .css-1dncbyk {
        overflow: hidden;
        font-size: 16px;
        font-weight: 600;
        line-height: 22px;
        color: #000000;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .css-8e7eit {
        overflow: hidden;
        font-size: 13px;
        color: #000000;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .css-kaibhs {
        display: flex;
        -ms-flex-direction: column;
        flex-direction: column;
        align-items: flex-start;
        -webkit-box-pack: end;
        -ms-flex-pack: end;
        justify-content: flex-end;
        margin-top: 6px;
    }
    .css-nzh9w2 {
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 40px;
        min-height: 25px;
        display: inline;
        padding: 0 9px;
        font-size: 11px;
        color: #000000;
        border: 1px solid #d4d4d4;
        border-radius: 2px;
    }
    @media (min-width: 541px) {
        .css-5jl7kz {
            padding: 40px 50px 0;
        }
    }
    @media (min-width: 541px) {
        .css-5jl7kz {
            min-width: 900px;
            max-width: 1300px;
        }
    }
    @media (min-width: 541px) {
        .css-1y47rmj {
            -webkit-box-pack: justify;
            -webkit-justify-content: space-between;
            justify-content: space-between;
        }
    }
    .css-1y47rmj {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: flex-start;
        -webkit-box-align: flex-start;
        -ms-flex-align: flex-start;
        align-items: flex-start;
        width: 100%;
    }
    /* 상품 슬라이드하는 곳부터  */
    @media (min-width: 541px) {
    .css-1y47rmj {
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        justify-content: space-between;
    }
}
    .css-1nxhd22 {
        position: relative;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        width: 47%;
    }
    .css-1vt3f8z {
        position: relative;
        width: 100%;
        padding-bottom: 100%;
    }
    .css-122y91a {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    .css-12qah06 {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .css-1vt3f8z {
        position: relative;
        width: 100%;
        padding-bottom: 100%;
    }
    .css-122y91a {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
    .css-uw6dxe:disabled {
        opacity: 0.35;
    }
    .css-uw6dxe:disabled {
        cursor: not-allowed;
    }
    .css-uw6dxe {
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
        min-width: 40px;
        min-height: 25px;
        position: absolute;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
        padding: 15px;
        background-color: #ffffff;
        left: 0;
    }
    .splide__arrow--prev {
        left: 1em;
    }
    .splide__arrow--prev svg {
        transform: scaleX(-1);
    }
    .css-19ilmue {
        width: 42px;
        height: 80px;
        width: 10px;
        height: 28px;
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
        -ms-transform: rotate(180deg);
        transform: rotate(180deg);
    }
    .css-19ilmue path {
        stroke: #303033;
        stroke-width: 3;
    }
    svg:not(:root) {
        overflow-clip-margin: content-box;
        overflow: hidden;
    }
    .css-1l4yul5 {
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
        min-width: 40px;
        min-height: 25px;
        position: absolute;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
        padding: 15px;
        background-color: #ffffff;
        right: 0;
    }
    .splide__arrow--next {
        right: 1em;
    }
    .css-fc0kkr {
        width: 42px;
        height: 80px;
        width: 10px;
        height: 28px;
    }
    
    .css-1nxhd22 .splide__pagination {
        position: unset;
        padding-top: 16px;
    }
    .splide__pagination {
        bottom: .5em;
        left: 0;
        padding: 0 1em;
        position: absolute;
        right: 0;
        z-index: 1;
    }
    .splide__pagination {
        align-items: center;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin: 0;
        pointer-events: none;
    }
    .splide__pagination li {
        display: inline-block;
        line-height: 1;
        list-style-type: none;
        margin: 0;
        pointer-events: auto;
    }
    .css-1nxhd22 .splide__pagination__page.is-active {
        -webkit-transform: scale(1);
        -moz-transform: scale(1);
        -ms-transform: scale(1);
        transform: scale(1);
        background-color: #000000;
    }
    .css-1nxhd22 .splide__pagination__page {
        width: 10px;
        height: 10px;
        margin: 0 5px;
        background-color: #e4e4e4;
        border-radius: 50%;
        -webkit-transition: none;
        transition: none;
    }
    .splide__pagination__page.is-active {
        background: #fff;
        transform: scale(1.4);
        z-index: 1;
    }
    .splide__pagination__page {
        background: #ccc;
        border: 0;
        border-radius: 50%;
        display: inline-block;
        height: 8px;
        margin: 3px;
        opacity: .7;
        padding: 0;
        position: relative;
        transition: transform .2s linear;
        width: 8px;
    }
    .css-3eeht {
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        width: 100%;
        padding-left: 45px;
    }
    .css-uz7uc7 {
        -webkit-box-flex: 1;
        -webkit-flex-grow: 1;
        -ms-flex-positive: 1;
        flex-grow: 1;
        padding-bottom: 16px;
        border-top: 2px solid #000000;
        border-bottom: 1px solid #f4f4f4;
    }
    .css-e9pho6 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        justify-content: space-between;
    }
    @media (min-width: 541px) {
        .css-14q0h0e {
            display: none;
        }
    }
    
    .css-xz8ybi {
        padding: 24px 0;
        padding-right: 34px;
        font-size: 20px;
        font-weight: 600;
        line-height: 26px;
        color: #000000;
    }
    .css-1gyviqy {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        width: 85px;
        border-left: 1px solid #e4e4e4;
    }
    .css-1qwq84l {
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
        min-width: 40px;
        min-height: 25px;
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        font-size: 12px;
        line-height: 1;
        color: #000000;
    }
    .css-kglvp1 {
        width: 26px;
        height: 26px;
    }
    
    .heart{
        d: path("M 9 6.088 C 9 3.831 10.791 2 13 2 s 4 1.83 4 4.088 c 0 1.743 -1.46 3.23 -1.46 3.23 L 9 16 L 2.46 9.318 S 1 7.83 1 6.088 C 1 3.831 2.791 2 5 2 s 4 1.83 4 4.088 Z");
        fill: rgb(255, 255, 255);
        fill-rule: evenodd;
        stroke: rgb(93, 93, 93);
        stroke-width: 0.7;
    }
    
    .slide_arrow1 {
        d: path("M 1 0 l 40 40.083 L 1.166 80");
        fill: none;
        fill-rule: evenodd;
        stroke: rgb(0, 0, 0);
        stroke-width: 5;
    }

    .slide_arrow2 {
        d: path("M 1 0 l 40 40.083 L 1.166 80");
        fill: none;
        fill-rule: evenodd;
        stroke: rgb(0, 0, 0);
        stroke-width: 5;
    }

    /* 상품 별점 */
    .css-1ilqvfb {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        margin-bottom: 24px;
    }
    .css-nbg1jm {
        margin-right: 12px;
    }
    .css-18biwo {
        display: -webkit-inline-box;
        display: -webkit-inline-flex;
        display: -ms-inline-flexbox;
        display: inline-flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-9nop8 {
        position: relative;
        display: inline-block;
        line-height: 0;
    }
    .star {
        fill: rgb(212, 212, 212);
        fill-rule: evenodd;
        stroke: rgb(212, 212, 212);
        stroke-width: 0.7;
        d: path("M 4.146 3.95 L 0 4.583 l 3 3.075 L 2.292 12 L 6 9.95 L 9.708 12 L 9 7.658 l 3 -3.075 l -4.146 -0.633 L 6 0 Z");
    }
    .css-neyd9i {
        overflow: hidden;
        position: absolute;
        display: inline-block;
        line-height: 0;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        width: 100%;
    }
    .star2 {
        fill: rgb(0, 0, 0);
        fill-rule: evenodd;
        stroke: rgb(0, 0, 0);
        stroke-width: 0.7;
        d: path("M 4.146 3.95 L 0 4.583 l 3 3.075 L 2.292 12 L 6 9.95 L 9.708 12 L 9 7.658 l 3 -3.075 l -4.146 -0.633 L 6 0 Z");
    }
    .css-mfscko {
        display: inline-block;
        height: 14px;
        font-size: 11px;
        font-weight: 500;
        color: #5d5d5d;
        border-bottom: 0.5px solid #5d5d5d;
    }
    
    /* 가격 부분 */
    .css-lcoy4n {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: end;
        -webkit-box-align: end;
        -ms-flex-align: end;
        align-items: end;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        justify-content: space-between;
    }
    .css-1rr4qq7 {
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
    }
    .css-1bci2fm {
        font-size: 16px;
        font-weight: 500;
        color: rgb(196, 196, 196);
    }
    .css-h6obet {
        position: relative;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        justify-content: space-between;
        min-height: 32px;
    }
    .css-1jsmahk {
        margin-right: 6px;
        font-size: 22px;
        font-weight: 600;
        color: rgb(255, 72, 0);
    }
    .css-4bcxzt {
        font-size: 22px;
        font-weight: 600;
        color: #000000;
    }
    .css-a5v5ts {
        position: relative;
        bottom: 1px;
        margin-left: 2px;
        font-size: 16px;
        font-weight: 700;
    }
    em, address {
        font-style: normal;
    }
    .css-1cevk7j {
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        min-width: 120px;
        -webkit-align-items: flex-end;
        -webkit-box-align: flex-end;
        -ms-flex-align: flex-end;
        align-items: flex-end;
        -webkit-box-pack: end;
        -ms-flex-pack: end;
        -webkit-justify-content: flex-end;
        justify-content: flex-end;
    }
    .css-1gchlp8 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        min-width: 40px;
        min-height: 25px;
        -webkit-box-pack: justify;
        justify-content: space-between;
        width: 97px;
        height: 32px;
        padding: 0px 10px 0px 14px;
        font-size: 11px;
        font-weight: 500;
        color: rgb(255, 255, 255);
        background-color: rgb(0, 0, 0);
    }
    .css-qzxgwt {
        width: 12px;
        height: 12px;
    }
    .g_coupon_download{
        fill: rgb(255, 255, 255);
        fill-rule: evenodd;
    }
    .p_coupon_download1{
        fill: none;
        d: path("M 0 0 h 9 v 9 H 0 Z");
    }
    .p_coupon_download2{
        d: path("M 7.284 4.243 L 4.625 6.695 l -0.292 0.275 l -0.003 -0.003 v 0.001 l -0.673 -0.626 l 0.002 -0.002 l -2.23 -2.083 l 0.733 -0.582 l 1.665 1.607 L 3.828 0 h 0.937 v 5.339 l 1.856 -1.678 l 0.663 0.582 Z m 0.31 3.505 v 0.943 h -6.54 v -0.943 h 6.54 Z");
    }
    .css-52zi8k {
        margin-top: 4px;
        font-size: 13px;
        line-height: 18px;
        color: #5d5d5d;
    }
    .css-enxt79 {
        border-bottom: 1px solid #f4f4f4;
    }
    .css-1n5ilnb {
        position: relative;
        background-color: var(--ruler-semantic-color-background-default);
    }
    .css-7boy05 {
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-1eaetqv {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
        justify-content: space-between;
        box-sizing: border-box;
        width: 100%;
    }
    .css-1ueg5w {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        white-space: nowrap;
    }
    .css-mmrttp {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-bold-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-bold-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-bold-line-height);
        font-size: var(--ruler-semantic-typography-text-m-bold-font-size);
        color: var(--ruler-semantic-color-text-primary);
        display: inline;
    }
    .css-x1sij0 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: baseline;
        -webkit-box-align: baseline;
        -ms-flex-align: baseline;
        align-items: baseline;
    }
    .css-1g7qv4a {
        line-height: 20px;
    }
    .css-1udwh3t {
        display: block;
        margin-left: 2px;
    }
    svg > .css-1udwh3t {
        width: 20;
        height: 20;
        fill: none;
    }
    .view_explanation1 {
        fill-rule: evenodd;
        clip-rule: evenodd;
        d: path("M 18.3332 9.99999 C 18.3332 14.6024 14.6022 18.3333 9.99984 18.3333 C 5.39746 18.3333 1.6665 14.6024 1.6665 9.99999 C 1.6665 5.39762 5.39746 1.66666 9.99984 1.66666 C 14.6022 1.66666 18.3332 5.39762 18.3332 9.99999 Z M 9.99984 17.5 C 14.142 17.5 17.4998 14.1421 17.4998 9.99999 C 17.4998 5.85785 14.142 2.49999 9.99984 2.49999 C 5.8577 2.49999 2.49984 5.85785 2.49984 9.99999 C 2.49984 14.1421 5.8577 17.5 9.99984 17.5 Z");
        fill: var(--ruler-scale-color-gray-400);
    }
    .view_explanation2 {
        d: path("M 8.98441 12.2742 C 9.00601 10.6746 9.76938 10.3477 10.7704 9.7287 C 11.4978 9.27663 11.9227 8.7411 11.9227 7.97606 C 11.9227 6.94674 11.0873 6.2582 10.0358 6.26515 C 9.05642 6.2582 8.17782 6.88414 8.12021 8.07343 H 7.08317 C 7.13358 6.44598 8.40827 5.41666 10.0358 5.41666 C 11.7498 5.41666 12.9165 6.51553 12.9165 8.01779 C 12.9165 9.03321 12.4268 9.74261 11.4762 10.3407 C 10.5544 10.911 9.99984 11.1753 9.97823 12.2742 V 12.5107 H 8.98441 V 12.2742 Z M 8.68914 13.846 C 8.68914 13.4357 9.04202 13.1018 9.46692 13.0949 C 9.88461 13.1018 10.2303 13.4357 10.2303 13.846 C 10.2303 14.2494 9.88461 14.5902 9.46692 14.5832 C 9.04202 14.5902 8.68914 14.2494 8.68914 13.846 Z");
        fill: var(--ruler-scale-color-gray-400);
    }
    .css-17mseqq {
        position: absolute;
        display: block;
        text-indent: -9999px;
    }
    /* 구매가능금액 툴팁 */
    @media (min-width: 541px) {
        .css-jtvhsa {
            max-width: calc(100% - 20px);
        }
    }
    .css-jtvhsa {
        position: absolute;
        z-index: 20;
        left: 0;
        display: none;
        width: 100%;
        margin-top: 28px;
    }
    .css-i5lk9o {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-line-height);
        font-size: var(--ruler-semantic-typography-text-m-font-size);
        color: var(--ruler-semantic-color-text-secondary);
        box-sizing: border-box;
        padding: 16px 14px;
        white-space: pre-wrap;
        background: var(--ruler-semantic-color-background-default);
        border: 1px solid var(--ruler-semantic-color-border-line);
    }
    .css-1gdpno1:first-of-type {
        margin-top: 0;
    }
    .css-1gdpno1 {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-line-height);
        font-size: var(--ruler-semantic-typography-text-m-font-size);
        color: var(--ruler-semantic-color-text-secondary);
        position: relative;
        padding-left: 12px;
    }
    .css-79elbk {
        position: relative;
    }
    .css-1otzfd9 {
        position: absolute;
        z-index: 1;
        padding: 6px 12px;
        font-size: 12px;
        font-weight: 400;
        color: #ffffff;
        white-space: nowrap;
        opacity: 0;
        background: #ff4800;
        border-radius: 2px;
        -webkit-transition: opacity 0.2s ease-in-out;
        transition: opacity 0.2s ease-in-out;
        top: -12px;
        left: 50%;
        -webkit-transform: translate(-50%, -100%);
        -moz-transform: translate(-50%, -100%);
        -ms-transform: translate(-50%, -100%);
        transform: translate(-50%, -100%);
        top: 12px;
        left: 100%;
        -webkit-transform: translate(-100%, -100%);
        -moz-transform: translate(-100%, -100%);
        -ms-transform: translate(-100%, -100%);
        transform: translate(-100%, -100%);
        margin-left: 8px;
    }
    .css-1otzfd9::after {
        left: 100%;
        -webkit-transform: translateX(100%);
        -moz-transform: translateX(100%);
        -ms-transform: translateX(100%);
        transform: translateX(100%);
        margin-left: -32px;
    }
    .css-1otzfd9::after {
        content: '';
        position: absolute;
        bottom: -6px;
        left: 50%;
        -webkit-transform: translateX(-50%);
        -moz-transform: translateX(-50%);
        -ms-transform: translateX(-50%);
        transform: translateX(-50%);
        border-top: 7px solid #ff4800;
        border-right: 5px solid transparent;
        border-left: 5px solid transparent;
    }
    .css-10bxcp7 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        gap: 6px;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        height: 60px;
        margin-right: -2px;
    }
    @media (min-width: 541px) {
        .css-a8kslq {
            gap: 8px;
        }
    }
    .css-a8kslq {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        gap: 6px;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        -webkit-box-pack: end;
        -ms-flex-pack: end;
        -webkit-justify-content: end;
        justify-content: end;
    }
    .css-zqatfe {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        gap: 6px;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-u757q {
        font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
        font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
        line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
        font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
        color: var(--ruler-semantic-color-text-tertiary);
        display: inline;
    }
    .css-1kj9qon {
        font-family: var(--ruler-semantic-typography-text-xxl-bold-font-family);
        font-weight: var(--ruler-semantic-typography-text-xxl-bold-font-weight);
        line-height: var(--ruler-semantic-typography-text-xxl-bold-line-height);
        font-size: var(--ruler-semantic-typography-text-xxl-bold-font-size);
        color: var(--ruler-semantic-color-text-primary);
        position: relative;
        display: flex;
        -webkit-box-align: baseline;
        align-items: baseline;
    }
    .css-14gt3bc {
        margin-left: 2px;
    }
    .css-1bz6w5x {
        width: 12px;
        height: 6px;
        margin: 0 0 0 8px;
        width: 20px;
        height: 20px;
        margin: 0;
        padding: 3px;
    }
    .view_down1 {
        fill: none;
        fill-rule: evenodd;
        stroke: var(--ruler-semantic-color-text-primary);
        stroke-width: 2;
    }
    .view_down2 {
        d: path("M 28 1 L 13.97 15 L 0 1.058");
    }

    /* 무이자 할부 */
    .css-17qwfjj {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        padding: 20px 0;
        border-bottom: 1px solid var(--ruler-scale-color-gray-100);
    }
    .css-a4fgns {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-medium-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-medium-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-medium-line-height);
        font-size: var(--ruler-semantic-typography-text-m-medium-font-size);
        color: var(--ruler-semantic-color-text-secondary);
        display: inline-block;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        -webkit-align-self: flex-start;
        -ms-flex-item-align: flex-start;
        align-self: flex-start;
        width: 110px;
    }
    .css-1slczgn {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-flex: 1;
        -webkit-flex-grow: 1;
        -ms-flex-positive: 1;
        flex-grow: 1;
        gap: 8px;
    }
    .css-70qvj9 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-x0q8ne {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-bold-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-bold-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-bold-line-height);
        font-size: var(--ruler-semantic-typography-text-m-bold-font-size);
        color: var(--ruler-semantic-color-text-secondary);
    }
    .css-acbihw {
        margin-left: 1px;
    }
    .installmentInfo1 {
        fill: none;
        fill-rule: evenodd;
    }    
    .installmentInfo2 {
        d: path("M 0 0 h 12 v 12 H 0 Z");
    }
    .installmentInfo3 {
        stroke: rgb(160, 160, 160);
        d: path("m 4.5 2.155 l 3.89 3.889 L 4.5 9.933");
    }
    /* 배송 정보 */
    .css-1kw04qr {
        padding: 20px 0;
    }
    .ul_shipping_info {
        display: block;
        list-style-type: disc;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        padding-inline-start: 0px;
        unicode-bidi: isolate;
    }
    
    .css-32ihlf {
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        margin-bottom: 16px;
    }
    .css-6jcthz {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-medium-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-medium-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-medium-line-height);
        font-size: var(--ruler-semantic-typography-text-m-medium-font-size);
        color: var(--ruler-semantic-color-text-secondary);
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        width: 110px;
    }
    .css-x1sij0 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: baseline;
        -webkit-box-align: baseline;
        -ms-flex-align: baseline;
        align-items: baseline;
    }
    .css-1behjaf {
        line-height: 20px;
        margin-top: -1px;
    }
    .css-1udwh3t {
        display: block;
        margin-left: 2px;
    }
    svg > .css-1udwh3t {
        width: 20;
        height: 20;
        fill: none;
    }
    .shipping_tooltip1 {
        fill-rule: evenodd;
        clip-rule: evenodd;
        d: path("M 18.3332 9.99999 C 18.3332 14.6024 14.6022 18.3333 9.99984 18.3333 C 5.39746 18.3333 1.6665 14.6024 1.6665 9.99999 C 1.6665 5.39762 5.39746 1.66666 9.99984 1.66666 C 14.6022 1.66666 18.3332 5.39762 18.3332 9.99999 Z M 9.99984 17.5 C 14.142 17.5 17.4998 14.1421 17.4998 9.99999 C 17.4998 5.85785 14.142 2.49999 9.99984 2.49999 C 5.8577 2.49999 2.49984 5.85785 2.49984 9.99999 C 2.49984 14.1421 5.8577 17.5 9.99984 17.5 Z");
        fill: var(--ruler-scale-color-gray-400);
    }
    .shipping_tooltip2 {
        d: path("M 8.98441 12.2742 C 9.00601 10.6746 9.76938 10.3477 10.7704 9.7287 C 11.4978 9.27663 11.9227 8.7411 11.9227 7.97606 C 11.9227 6.94674 11.0873 6.2582 10.0358 6.26515 C 9.05642 6.2582 8.17782 6.88414 8.12021 8.07343 H 7.08317 C 7.13358 6.44598 8.40827 5.41666 10.0358 5.41666 C 11.7498 5.41666 12.9165 6.51553 12.9165 8.01779 C 12.9165 9.03321 12.4268 9.74261 11.4762 10.3407 C 10.5544 10.911 9.99984 11.1753 9.97823 12.2742 V 12.5107 H 8.98441 V 12.2742 Z M 8.68914 13.846 C 8.68914 13.4357 9.04202 13.1018 9.46692 13.0949 C 9.88461 13.1018 10.2303 13.4357 10.2303 13.846 C 10.2303 14.2494 9.88461 14.5902 9.46692 14.5832 C 9.04202 14.5902 8.68914 14.2494 8.68914 13.846 Z");
        fill: var(--ruler-scale-color-gray-400);
    }
    .css-17mseqq {
        position: absolute;
        display: block;
        text-indent: -9999px;
    }
    @media (min-width: 541px) {
        .css-jtvhsa {
            max-width: calc(100% - 20px);
        }
    }
    .css-i5lk9o {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-line-height);
        font-size: var(--ruler-semantic-typography-text-m-font-size);
        color: var(--ruler-semantic-color-text-secondary);
        box-sizing: border-box;
        padding: 16px 14px;
        white-space: pre-wrap;
        background: var(--ruler-semantic-color-background-default);
        border: 1px solid var(--ruler-semantic-color-border-line);
    }
    .css-rgis3z {
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-flex: 1;
        -webkit-flex-grow: 1;
        -ms-flex-positive: 1;
        flex-grow: 1;
        gap: 2px;
        line-height: 0;
    }
    .css-wpwytb {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        gap: 4px;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-6fhy8c {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-medium-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-medium-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-medium-line-height);
        font-size: var(--ruler-semantic-typography-text-m-medium-font-size);
        color: var(--ruler-semantic-color-common-interactive);
    }
    .css-6fhy8cc {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-medium-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-medium-font-weight);
        font-size: var(--ruler-semantic-typography-text-m-medium-font-size);
        color: var(--ruler-semantic-color-common-interactive);
    }
    .css-32ihlf:last-of-type {
        margin-bottom: 0;
    }
    .css-32ihlf {
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        margin-bottom: 16px;
    }
    .css-6jcthz {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-medium-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-medium-font-weight);
        line-height: var(--ruler-semantic-typography-text-m-medium-line-height);
        font-size: var(--ruler-semantic-typography-text-m-medium-font-size);
        color: var(--ruler-semantic-color-text-secondary);
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-shrink: 0;
        -ms-flex-negative: 0;
        flex-shrink: 0;
        width: 110px;
    }
    .css-ac5pa2 {
        display: inline-block;
        font-family: var(--ruler-semantic-typography-text-m-medium-font-family);
        font-weight: var(--ruler-semantic-typography-text-m-medium-font-weight);
        font-size: var(--ruler-semantic-typography-text-m-medium-font-size);
        color: var(--ruler-semantic-color-text-secondary);
    }
    .css-ozyn3l {
        padding: 20px 0;
        border-top: 1px solid #f4f4f4;
    }
    .css-129gw94 {
        line-height: 0;
    }
    .css-1rhyn18:last-of-type {
        margin-bottom: 0px;
    }
    .css-1rhyn18 {
        position: relative;
        width: 100%;
        margin-bottom: 4px;
    }
    .css-79elbk {
        position: relative;
    }
    .css-qmbng6 {
        display: block;
        width: 100%;
        border: 1px solid rgb(212, 212, 212);
        outline: none;
        cursor: pointer;
        height: 36px;
        padding: 0px 30px 0px 14px;
        font-size: 13px;
        color: rgb(48, 48, 51);
        background: transparent;
    }
    .css-cs4h3q {
        pointer-events: none;
        position: absolute;
        top: 50%;
        right: 14px;
        width: 12px;
        height: 6px;
        margin-top: -4px;
        line-height: 6px;
        vertical-align: top;
    }
    .select_option1 {
        fill: none;
        fill-rule: evenodd;
        stroke: rgb(212, 212, 212);
        stroke-width: 3;
    }
    .select_option2 {
        d: path("M 28 1 L 13.97 15 L 0 1.058");
    }
    .css-jna93d {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        padding-top: 16px;
    }
    .css-vqh4y {
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
        min-width: 40px;
        min-height: 25px;
        width: 100%;
        height: 50px;
        font-size: 14px;
        font-weight: 600;
        background-color: #ffffff;
        color: #000000;
        border: 1px solid #d4d4d4;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
    }
    .css-103n73x {
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
        min-width: 40px;
        min-height: 25px;
        width: 100%;
        height: 50px;
        font-size: 14px;
        font-weight: 600;
        color: #ffffff;
        background-color: #000000;
        box-shadow: 10px 10px 16px 0 rgb(0 0 0 / 30%);
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        margin-left: 6px;
    }
    .css-103n73x:hover {
        background-color: red;
    }

    /* 까지 */

    /* 상품 정보, 설명 */
    @media (min-width: 541px) {
        .css-5jl7kz {
            padding: 40px 50px 0;
        }
    }
    
    @media (min-width: 541px) {
        .css-5jl7kz {
            min-width: 900px;
            max-width: 1300px;
        }
    }    

    .css-5jl7kz {
        margin: 0 auto;
    }


    article, aside, details, figcaption, figure, footer, header, main, menu, nav, section, summary {
        display: block;
    }
    .css-1l6r90u {
        position: relative;
        border-bottom: 1px solid rgb(228, 228, 228);
    }
    .css-1kzibha {
        min-width: 40px;
        min-height: 25px;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        justify-content: space-between;
        width: 100%;
        height: 54px;
        font-size: 17px;
        font-weight: 700;
        color: rgb(48, 48, 51);
    }
    .css-bjblx9 {
        width: 12px;
        height: 6px;
        transform: rotate(180deg);
    }
    
    .product_info_view1 {
        fill: none;
        fill-rule: evenodd;
        stroke: rgb(212, 212, 212);
        stroke-width: 3;
    }
    .product_info_view2 {
        d: path("M 28 1 L 13.97 15 L 0 1.058");
    }
    .css-ckmsfc {
        margin-top: -5px;
        padding: 0px 0px 10px;
        font-size: 14px;
        line-height: 1.8;
        color: rgb(48, 48, 51);
        word-break: break-all;
    }
    .css-k008qs {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
    }
    .css-ysqghp {
        font-size: 14px;
        font-weight: normal;
        margin-block-start: 0em;
        margin-block-end: 0em;
    }
    .css-e3b3e9 {
        position: relative;
        border-bottom: 1px solid rgb(228, 228, 228);
    }
    
    .css-bjblx9 {
        width: 12px;
        height: 6px;
        transform: rotate(180deg);
    }
    .css-ckmsfc {
        margin-top: -5px;
        padding: 0px 0px 10px;
        font-size: 14px;
        line-height: 1.8;
        color: rgb(48, 48, 51);
        word-break: break-all;
    }
    .css-l57rop {
        padding-bottom: 10px;
    }
    /* 까지 */

    
    
    
    
    
    
    /* 상품정보 보기 */
    @media (min-width: 541px) {
        .css-edibn {
            max-width: 1000px;
        }
    }
    @media (min-width: 541px) {
        .css-edibn {
            min-width: 900px;
            max-width: 1300px;
        }
    }
    .css-edibn {
        margin: 0 auto;
        padding-bottom: 140px;
        padding-bottom: calc(constant(safe-area-inset-bottom) + 140px);
        padding-bottom: calc(env(safe-area-inset-bottom) + 140px);
    }
    @media (min-width: 541px) {
        .css-1wvn7e9 {
            max-width: 1000px;
            margin: 0 auto;
            padding-top: 50px;
        }
    }
    .css-cqao5e {
        padding: 0;
        max-height: 3000px;
        overflow: hidden;
    }
    .css-6rwnxw {
        margin-bottom: 50px;
    }
    .css-1u363o {
        font-size: 22px;
        font-weight: 600;
        line-height: 30px;
        color: #000000;
    }
    h2 {
        display: block;
        font-size: 1.5em;
        margin-block-start: 0.83em;
        margin-block-end: 0.83em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
        unicode-bidi: isolate;
    }
    .transform-component-module_wrapper__1_Fgj {
        position: relative;
        width: -moz-fit-content;
        width: fit-content;
        height: -moz-fit-content;
        height: fit-content;
        overflow: hidden;
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        margin: 0;
        padding: 0;
    }
    .transform-component-module_content__2jYgh {
        display: flex;
        flex-wrap: wrap;
        width: -moz-fit-content;
        width: fit-content;
        height: -moz-fit-content;
        height: fit-content;
        margin: 0;
        padding: 0;
        transform-origin: 0% 0%;
    }
    .css-1jymsv8 {
        max-width: 100%;
        margin-top: 8px;
        font-size: 16px;
        line-height: 26px;
        color: #000000;
    }
    .css-17yt8te {
        display: table;
        margin: 0 auto;
    }
    .transform-component-module_content__2jYgh img {
        pointer-events: none;
    }
    .css-1j3v5r6 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 1000px;
        height: 601px;
    }
    .css-1i8e379 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 1000px;
        height: 4543px;
    }
    .css-1b1t0j7 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1105px;
    }
    /* 까지 설명사진은 첫번째 2번째 마지막꺼만 넣어봄*/
    
    
    
    
    
    
    
    
    .css-xydx6f {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 1000px;
        height: 11529px;
    }
    .css-1urinh9 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 521px;
    }
    .css-ywucxc {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 497px;
    }
    .css-1adlh0m {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 2077px;
    }
    .css-er8ply {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1293px;
    }
    .css-1scxc5e {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1299px;
    }
    .css-wr87ye {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1287px;
    }
    .css-lpxp9d {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1595px;
    }
    .css-1bz5kv5 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1586px;
    }
    .css-v3s4m6 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 484px;
    }
    .css-9bagql {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 863px;
    }
    .css-1x34r7s {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 872px;
    }
    .css-156eoe4 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1153px;
    }
    .css-1yu4n1w {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1170px;
    }
    .css-hfvqfh {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 775px;
    }
    .css-1dupgxg {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 782px;
    }
    .css-1rjk2ix {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 603px;
    }
    .css-1w6p6oe {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 2691px;
    }
    .css-9zq42x {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 1000px;
        height: 2854px;
    }
    .css-15yvzh9 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 1000px;
        height: 1389px;
    }
    .css-1b1t0j7 {
        display: block;
        min-width: 750px;
        max-width: 100%;
        object-fit: cover;
        width: 860px;
        height: 1105px;
    }
    .css-1j6c1k1 {
        position: relative;
    }
    .css-h7utre {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 40px;
        min-height: 25px;
        width: 100%;
        height: 58px;
        border: 1px solid rgb(0, 0, 0);
        color: rgb(0, 0, 0);
        font-size: 15px;
        font-weight: bold;
    }
    .css-1hwrpy {
        margin: 0px 0px 0px 8px;
        width: 12px;
        height: 12px;
    }
    .css-1j6c1k1::after {
        position: absolute;
        left: 0px;
        right: 0px;
        bottom: 100%;
        height: 160px;
        background: linear-gradient(rgba(255, 255, 255, 0) 0%, rgb(255, 255, 255) 100%);
        content: "";
    }

    /* 상품 정보보기 시작 */
    .css-1bl1yo {
        margin-top: 60px;
    }
    section {
        display: block;
        unicode-bidi: isolate;
    }
    .css-14lcz5m {
        font-size: 22px;
        line-height: 30px;
        font-weight: 600;
        color: #000000;
    }
    .css-gcbtkb {
        margin-top: 8px;
        font-size: 16px;
        line-height: 26px;
        color: #000000;
    }

    .css-1wi5uwm {
        position: relative;
        margin-top: 50px;
    }
    .css-9kbqwj {
        font-size: 22px;
        line-height: 30px;
        font-weight: 600;
        color: rgb(0, 0, 0);
    }
    .css-1x7jfi1 {
        table-layout: fixed;
        border-spacing: 0px;
        border-collapse: collapse;
        width: 100%;
        font-size: 14px;
        color: rgb(0, 0, 0);
        text-align: left;
        border-width: 4px 1px 1px;
        border-style: solid;
        border-color: rgb(0, 0, 0) rgb(212, 212, 212) rgb(212, 212, 212);
        border-image: initial;
        margin-top: 12px;
    }
    table {
        border-collapse: collapse;
        border-spacing: 0;
        display: table;
        border-collapse: separate;
        box-sizing: border-box;
        text-indent: initial;
        unicode-bidi: isolate;
        border-spacing: 2px;
        border-color: gray;
    }
    tbody {
        display: table-row-group;
        vertical-align: middle;
        unicode-bidi: isolate;
        border-color: inherit;
    }
    tr {
        display: table-row;
        vertical-align: inherit;
        unicode-bidi: isolate;
        border-color: inherit;
    }
    .css-f2rgan {
        width: 240px;
        padding: 18px 20px;
        font-weight: 600;
        color: rgb(0, 0, 0);
        border: 1px solid rgb(212, 212, 212);
    }
    th {
        display: table-cell;
        vertical-align: inherit;
        font-weight: bold;
        text-align: -internal-center;
        unicode-bidi: isolate;
    }
    .css-q35or5 {
        padding: 18px 20px;
        overflow-wrap: break-word;
        border-style: solid;
        border-color: rgb(212, 212, 212);
        border-image: initial;
        border-width: 1px 0px 0px 1px;
    }
    td {
        display: table-cell;
        vertical-align: inherit;
        unicode-bidi: isolate;
    }
    /* 까지 */
    .css-1wi5uwm {
        margin-left: 150px;
        margin-right: 150px;
        position: static;
        margin-top: 50px;
    }
    @media screen and (max-width: 600px) {
        .css-1wi5uwm {
            margin: 0; /* 마진을 0으로 설정하여 요소를 숨깁니다. */
        }
    }
    .css-9kbqwj {
        font-size: 22px;
        line-height: 30px;
        font-weight: 600;
        color: rgb(0, 0, 0);
    }
    .css-r9lnna {
        position: relative;
        overflow: hidden;
        background-image: url(https://img.29cm.co.kr/next-brand/2020/03/26/7edae1d…_20200326171211.jpg?width=1000);
        background-repeat: no-repeat;
        background-position: 50% 50%;
        background-size: cover;
        margin-top: 50px;
        margin-left: 150px;
        margin-right: 150px;
    }
    @media screen and (max-width: 600px) {
        .css-r9lnna {
            margin: 0; /* 마진을 0으로 설정하여 요소를 숨깁니다. */
        }
    }
    .css-r9lnna::before {
        content: "";
        position: absolute;
        z-index: 1;
        inset: 0px;
        background: rgba(0, 0, 0, 0.6);
        
    }
    .css-1e3m3k1 {
        position: relative;
        z-index: 2;
        display: flex;
        flex-direction: column;
        -webkit-box-pack: center;
        justify-content: center;
        width: 100%;
        min-height: 468px;
        padding: 48px 45% 144px 50px;
        color: rgb(255, 255, 255);
        word-break: break-all;
        
    }
    .css-cs9g2x {
        display: block;
        font-size: 14px;
        line-height: 1.1;
    }
    .css-1oj7gx8 {
        font-size: 46px;
        font-weight: 600;
        line-height: 1.4;
    }
    .css-jai8i {
        margin-top: 20px;
        font-size: 16px;
        line-height: 26px;
        white-space: pre-line;
    }
    p {
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        unicode-bidi: isolate;
    }
    .css-1xaekgw {
        margin-top: 20px;
    }
    .css-1b4nt2n {
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 40px;
        min-height: 25px;
        display: flex;
        flex-direction: column;
        -webkit-box-align: center;
        align-items: center;
        margin-left: -5px;
        font-size: 12px;
        line-height: 1;
        color: rgb(255, 255, 255);
    }
    .css-1q42te3 {
        width: 30px;
        height: 30px;
    }
    .css-rw02hl {
        margin-top: 7px;
        font-size: 12px;
    }
    .css-1eangog {
        position: absolute;
        z-index: 2;
        bottom: 50px;
        left: 50px;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        padding: 16px 14px;
        font-size: 14px;
        color: rgb(255, 255, 255);
        border: 1px solid rgb(255, 255, 255);
    }
    
    a {
        -webkit-text-decoration: none;
        text-decoration: none;
        outline: none;
    }
    a:-webkit-any-link {
        color: -webkit-link;
        cursor: pointer;
    }
    .css-1dmv4kt {
        width: 42px;
        height: 6px;
        margin-left: 57px;
    }
    /* 해당 브랜드 상품 */
    .css-c9lclf {
        content-visibility: auto;
        contain-intrinsic-size: 360px;
        margin-top: 20px;
        margin-bottom: 40px;
    }
    .css-1vy2ajr {
        margin-bottom: 15px;
        -webkit-box-pack: justify;
        justify-content: space-between;
        font-size: 22px;
        line-height: 30px;
        font-weight: bold;
        display: none;
    }
    @media (min-width: 541px) {
        .css-kz79nd {
            display: none;
        }
    }
    .css-kz79nd {
        font-size: 13px;
        font-weight: normal;
        color: rgb(93, 93, 93);
    }
    .css-1m4f0m {
        margin: 0px -9px;
        margin-left: 140px;
        margin-right: 140px;
    }
    

    .css-1m4f0m .slide {
        position: relative;
        padding-bottom: 60px;
    }
    
    .splide.is-initialized, .splide.is-rendered {
        visibility: visible;
    }
    .splide {
        position: relative;
        visibility: hidden;
    }


    .splide__track--draggable {
        -webkit-touch-callout: none;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }
    .splide__track {
        overflow: hidden;
        position: relative;
        z-index: 0;
    }
    .splide__list {
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        display: flex;
        height: 100%;
        margin: 0 !important;
        padding: 0 !important;
    }
    .css-mmkycr {
        width: 20%;
        padding: 0px 9px;
    }
    .splide__slide {
        -webkit-tap-highlight-color: transparent;
    }
    .splide__slide {
        -webkit-backface-visibility: hidden;
        backface-visibility: hidden;
        box-sizing: border-box;
        flex-shrink: 0;
        list-style-type: none !important;
        margin: 0;
        position: relative;
    }
    .css-79elbk {
        position: relative;
    }
    .css-17d7tlx {
        overflow: hidden;
        font-size: 13px;
        color: rgb(0, 0, 0);
    }
    .css-1so5xgc {
        position: relative;
        overflow: hidden;
        display: block;
        width: 100%;
        padding-top: 100%;
        background: rgb(245, 247, 246);
    }
    .splide__slide img {
        vertical-align: bottom;
    }
    .css-aaltuk {
        position: absolute;
        top: 0px;
        bottom: 0px;
        left: 0px;
        width: 100%;
        margin: auto;
    }
    .css-ltqa49 {
        display: flex;
        margin-top: 12px;
    }
    .css-16agjqd {
        overflow: hidden;
        width: 100%;
    }
    .css-18mjw15 {
        display: block;
        margin-top: 3px;
        text-decoration: none;
    }
    .css-1bz3l1k {
        overflow: hidden;
        display: -webkit-box;
        padding-right: 10%;
        font-weight: 400;
        line-height: 18px;
        color: rgb(0, 0, 0);
        text-overflow: ellipsis;
        word-break: break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
    }

    /* 슬라이드 버튼 */
    .css-egfzt5 {
        position: absolute;
        bottom: 0px;
        display: block;
        width: 100%;
        font-size: 30px;
        font-weight: 200;
        font-style: italic;
        line-height: 34px;
        color: rgb(160, 160, 160);
        text-align: center;
    }
    .css-119htks {
        padding-right: 5px;
        color: rgb(0, 0, 0);
    }
    .css-1sugwtq {
        padding-left: 5px;
    }
    .css-13o7eu2 {
        display: block;
    }
    .css-12c5844:disabled {
        cursor: not-allowed;
    }
    .css-12c5844 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        position: absolute;
        bottom: -3px;
        z-index: 1;
        box-sizing: content-box;
        min-width: 10px;
        min-height: 20px;
        width: 10px;
        height: 20px;
        padding: 10px;
        left: 50%;
        margin-left: -100px;
    }
    .css-12c5844 svg {
        width: 100%;
        height: 100%;
    }
    .splide__arrow--prev svg {
        transform: scaleX(-1);
    }
    .css-l0saa {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        position: absolute;
        bottom: -3px;
        z-index: 1;
        box-sizing: content-box;
        min-width: 10px;
        min-height: 20px;
        width: 10px;
        height: 20px;
        padding: 10px;
        right: 50%;
        margin-right: -100px;
    }
    /* 까지 */
    h4 {
        display: block;
        margin-block-start: 1.33em;
        margin-block-end: 1.33em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
        unicode-bidi: isolate;
    }
    .css-1hda3uw {
        display: block;
        margin-top: 7px;
        font-size: 16px;
        font-weight: 600;
    }
    .css-1kt1fs {
        font-size: 13px;
        font-weight: 300;
        color: rgb(160, 160, 160);
    }
    .css-p7mzyt {
        margin-right: 1px;
        font-size: 16px;
        font-weight: 600;
        line-height: 17px;
        color: rgb(255, 72, 0);
    }
    .css-842lcu {
        color: rgb(0, 0, 0);
    }
    @media (min-width: 541px) {
        .css-uh8kc9 {
            display: none;
        }
    }    
    .css-uh8kc9 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 40px;
        min-height: 25px;
    }
    
    .css-17mseqq {
        position: absolute;
        display: block;
        text-indent: -9999px;
    }
    .css-mmkycr {
        width: 20%;
        padding: 0px 9px;
    }
    .css-79elbk {
        position: relative;
    }
    .css-17d7tlx {
        overflow: hidden;
        font-size: 13px;
        color: rgb(0, 0, 0);
    }
    .css-1so5xgc {
        position: relative;
        overflow: hidden;
        display: block;
        width: 100%;
        padding-top: 100%;
        background: rgb(245, 247, 246);
    }
    .splide__slide img {
        vertical-align: bottom;
    }
    .css-aaltuk {
        position: absolute;
        top: 0px;
        bottom: 0px;
        left: 0px;
        width: 100%;
        margin: auto;
    }
    .css-ltqa49 {
        display: flex;
        margin-top: 12px;
    }
    .css-16agjqd {
        overflow: hidden;
        width: 100%;
    }
    
    .css-1bz3l1k {
        overflow: hidden;
        display: -webkit-box;
        padding-right: 10%;
        font-weight: 400;
        line-height: 18px;
        color: rgb(0, 0, 0);
        text-overflow: ellipsis;
        word-break: break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
    }
    .css-1hda3uw {
        display: block;
        margin-top: 7px;
        font-size: 16px;
        font-weight: 600;
    }
    @media (min-width: 541px) {
    
        .css-uh8kc9 {
            display: none;
        }
    }
    .css-uh8kc9 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 40px;
        min-height: 25px;
    }
    .css-17mseqq {
        position: absolute;
        display: block;
        text-indent: -9999px;
    }
    .css-mmkycr {
        width: 20%;
        padding: 0px 9px;
    }
    .css-79elbk {
        position: relative;
    }
    .css-17d7tlx {
        overflow: hidden;
        font-size: 13px;
        color: rgb(0, 0, 0);
    }
    .css-1so5xgc {
        position: relative;
        overflow: hidden;
        display: block;
        width: 100%;
        padding-top: 100%;
        background: rgb(245, 247, 246);
    }
    .css-aaltuk {
        position: absolute;
        top: 0px;
        bottom: 0px;
        left: 0px;
        width: 100%;
        margin: auto;
    }
    .css-ltqa49 {
        display: flex;
        margin-top: 12px;
    }
    .css-16agjqd {
        overflow: hidden;
        width: 100%;
    }
    
    .css-1bz3l1k {
        overflow: hidden;
        display: -webkit-box;
        padding-right: 10%;
        font-weight: 400;
        line-height: 18px;
        color: rgb(0, 0, 0);
        text-overflow: ellipsis;
        word-break: break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
    }
    .css-1hda3uw {
        display: block;
        margin-top: 7px;
        font-size: 16px;
        font-weight: 600;
    }
    .css-842lcu {
        color: rgb(0, 0, 0);
    }
    @media (min-width: 541px) {
    
        .css-uh8kc9 {
            display: none;
        }
    }
    .css-mmkycr {
        width: 20%;
        padding: 0px 9px;
    }
    .css-79elbk {
        position: relative;
    }
    .css-17d7tlx {
        overflow: hidden;
        font-size: 13px;
        color: rgb(0, 0, 0);
    }
    .css-1so5xgc {
        position: relative;
        overflow: hidden;
        display: block;
        width: 100%;
        padding-top: 100%;
        background: rgb(245, 247, 246);
    }
    .css-aaltuk {
        position: absolute;
        top: 0px;
        bottom: 0px;
        left: 0px;
        width: 100%;
        margin: auto;
    }
    .css-ltqa49 {
        display: flex;
        margin-top: 12px;
    }
    .css-16agjqd {
        overflow: hidden;
        width: 100%;
    }
    
    .css-1bz3l1k {
        overflow: hidden;
        display: -webkit-box;
        padding-right: 10%;
        font-weight: 400;
        line-height: 18px;
        color: rgb(0, 0, 0);
        text-overflow: ellipsis;
        word-break: break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
    }
    .css-1hda3uw {
        display: block;
        margin-top: 7px;
        font-size: 16px;
        font-weight: 600;
    }
    .css-842lcu {
        color: rgb(0, 0, 0);
    }
    @media (min-width: 541px) {
        .css-uh8kc9 {
            display: none;
        }
    }
    .css-uh8kc9 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 40px;
        min-height: 25px;
    }
    .css-mmkycr {
        width: 20%;
        padding: 0px 9px;
    }
    .css-79elbk {
        position: relative;
    }
    .css-17d7tlx {
        overflow: hidden;
        font-size: 13px;
        color: rgb(0, 0, 0);
    }
    .css-1so5xgc {
        position: relative;
        overflow: hidden;
        display: block;
        width: 100%;
        padding-top: 100%;
        background: rgb(245, 247, 246);
    }
    .css-aaltuk {
        position: absolute;
        top: 0px;
        bottom: 0px;
        left: 0px;
        width: 100%;
        margin: auto;
    }
    .css-ltqa49 {
        display: flex;
        margin-top: 12px;
    }
    .css-16agjqd {
        overflow: hidden;
        width: 100%;
    }
    
    .css-1bz3l1k {
        overflow: hidden;
        display: -webkit-box;
        padding-right: 10%;
        font-weight: 400;
        line-height: 18px;
        color: rgb(0, 0, 0);
        text-overflow: ellipsis;
        word-break: break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
    }
    .css-1hda3uw {
        display: block;
        margin-top: 7px;
        font-size: 16px;
        font-weight: 600;
    }
    .css-842lcu {
        color: rgb(0, 0, 0);
    }
    
    /* 리뷰 */
    .css-1w043rb {
        margin-top: 50px;
        margin-left: 140px;
        margin-right: 140px;
    }
    .css-rpfdd0 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        justify-content: space-between;
        border-bottom: 4px solid rgb(0, 0, 0);
        padding-bottom: 12px;
    }
    .css-70qvj9 {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-rrzi56 {
        display: flex;
        gap: 2px;
        font-size: 22px;
        line-height: 30px;
        font-weight: 600;
        color: rgb(0, 0, 0);
        margin-right: 8px;
    }
    .css-18biwo {
        display: -webkit-inline-box;
        display: -webkit-inline-flex;
        display: -ms-inline-flexbox;
        display: inline-flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-9nop8 {
        position: relative;
        display: inline-block;
        line-height: 0;
    }
    .css-9nop8:not(:first-of-type) {
        margin-left: 2px;
    }
    .css-12192rx {
        padding: 30px 0px 15px;
        content-visibility: auto;
        contain-intrinsic-size: 180px;
    }
    .css-ruapjk {
        position: relative;
        flex-shrink: 0;
    }
    .css-y4wdi3 {
        position: relative;
        cursor: pointer;
    }
    .css-n8h1i5 {
        position: absolute;
        inset: 0px;
        width: 100%;
        height: 100%;
        margin: auto;
        object-fit: cover;
    }
    .css-uwwqev {
        width: 100%;
        height: 100%;
    }
    .css-rxshk0 {
        position: relative;
        overflow: hidden;
        width: 100%;
        padding-top: 100%;
        background: rgb(216, 216, 216);
    }
    .css-13o7eu2 {
        display: block;
    }
    .css-1yhj7r7:disabled {
        cursor: not-allowed;
    }
    .css-1yhj7r7 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-height: 25px;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        width: 30px;
        min-width: 0px;
        height: 120px;
        background-color: rgb(255, 255, 255);
        border: 1px solid rgb(228, 228, 228);
        left: 0px;
    }
    .css-1ysd006 {
        width: 10px;
        height: 28px;
        transform: rotate(180deg);
    }
    .css-1lxndzo {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-height: 25px;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        width: 30px;
        min-width: 0px;
        height: 120px;
        background-color: rgb(255, 255, 255);
        border: 1px solid rgb(228, 228, 228);
        right: 0px;
    }
    .css-1bmm1n2 {
        width: 10px;
        height: 28px;
    }

    /* 리뷰 글 */
    .css-100fusk {
        position: relative;
        padding: 15px 10px 10px;
        background-color: rgb(255, 255, 255);
    }
    .css-4g6ai3 {
        cursor: pointer;
    }
    .css-69znzl {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        margin-bottom: 15px;
        font-size: 11px;
        font-weight: 300;
        line-height: 15px;
        color: rgb(0, 0, 0);
    }
    .css-18biwo {
        display: -webkit-inline-box;
        display: -webkit-inline-flex;
        display: -ms-inline-flexbox;
        display: inline-flex;
        -webkit-align-items: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
    }
    .css-9nop8 {
        position: relative;
        display: inline-block;
        line-height: 0;
    }
    .css-5030pi {
        padding: 0px 5px;
    }
    .css-1riowxi {
        display: flex;
        -webkit-box-flex: 1;
        flex-grow: 1;
        -webkit-box-pack: end;
        justify-content: flex-end;
    }
    .css-16tn2ye {
        position: relative;
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
    }
    .css-31l7gp {
        min-width: 0px;
    }
    .css-4oetsc {
        display: flex;
        flex-direction: column;
        gap: 4px;
        margin-bottom: 6px;
    }
    .css-nn803e {
        display: flex;
        gap: 1px;
    }
    .css-rlwyr0 {
        flex-shrink: 0;
        font-size: 12px;
        color: rgb(160, 160, 160);
        line-height: 1.25;
        white-space: pre;
    }
    .css-wle0cx {
        font-size: 12px;
        color: rgb(160, 160, 160);
        line-height: 1.25;
    }
    .css-1gk1nxz {
        overflow: hidden;
        font-size: 14px;
        line-height: 22px;
        color: rgb(0, 0, 0);
        text-align: left;
        white-space: nowrap;
        text-overflow: ellipsis;
        word-break: break-all;
    }
    .css-1jjxju6 {
        flex-shrink: 0;
        margin-left: 16px;
    }
    .css-18bdumj {
        width: 40px;
        height: 40px;
        object-fit: cover;
    }
    .css-175ywfd {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        margin-top: 2px;
        margin-bottom: 10px;
    }
    .css-imikhc {
        display: inline-block;
        margin-right: 5px;
        color: rgb(255, 255, 255);
        background-color: rgb(0, 0, 0);
        flex-shrink: 0;
        height: 18px;
        padding: 0px 6px;
        font-size: 10px;
        line-height: 18px;
        border-radius: 1px;
    }

    /* 리뷰 페이지 스타일 */
    .css-1oq0g9s {
        padding: 0px 50px;
        position: relative;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        margin-top: 15px;
    }
    .css-16vmvyd {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        line-height: 1;
    }
    .css-12l5i6f {
        padding: 0px 8px;
        min-width: 10px;
        font-size: 16px;
        font-weight: 300;
        color: rgb(0, 0, 0);
    }
    .css-1xzw0uc {
        font-size: 16px;
        color: rgb(0, 0, 0);
        font-weight: 700;
        border-bottom: 1px solid rgb(0, 0, 0);
    }
    .css-129gw94 {
        line-height: 0;
    }
    .css-11r31mh {
        width: 11px;
        height: 22px;
        margin: 0px 20px 0px 10px;
    }
    
    .css-17mseqq {
        position: absolute;
        display: block;
        text-indent: -9999px;
    }
    .css-129gw94 {
        line-height: 0;
    }
    .css-ar1b2l {
        width: 11px;
        height: 22px;
        margin: 0px 10px 0px 20px;
    }
    
    /* 상품 Q&A */
    .css-f18qjw {
        position: relative;
        margin-top: 70px;
        margin-left: 140px;
        margin-right: 140px;
    }
    .css-3sj7fp {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: justify;
        justify-content: space-between;
        border-bottom: 4px solid rgb(0, 0, 0);
        padding-bottom: 4px;
    }
    .css-190b6wm {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
    }
    .css-1byql8u {
        font-size: 22px;
        line-height: 30px;
        font-weight: 600;
        color: rgb(0, 0, 0);
        margin-right: 15px;
    }
    .css-k008qs {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
    }
    .css-13veewm {
        padding: 2px 20px 0px;
        font-size: 14px;
        line-height: 42px;
        color: rgb(0, 0, 0);
        font-weight: 700;
    }
    .css-1bpzozu:not(:last-of-type)::after {
        display: inline-block;
        width: 1px;
        height: 14px;
        margin: 17px 0px 0px;
        background: rgb(212, 212, 212);
        vertical-align: top;
        content: "";
    }
    .css-7mk7dj {
        padding: 2px 20px 0px;
        font-size: 14px;
        font-weight: 200;
        line-height: 42px;
        color: rgb(93, 93, 93);
    }
    .css-v3245 {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 40px;
        min-height: 25px;
        margin-left: 36px;
        font-size: 14px;
        font-weight: 700;
        color: rgb(48, 48, 51);
        text-decoration: underline;
    }
    .css-18f9y8v {
        padding: 14px 10px;
        position: relative;
        text-align: left;
    }
    .css-1a2sitv {
        cursor: pointer;
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
    }
    .css-31l7gp {
        min-width: 0px;
    }
    .css-ef2jzh {
        margin-bottom: 2px;
        font-size: 14px;
        line-height: 20px;
        color: rgb(160, 160, 160);
    }
    .css-1wmvtpx {
        position: relative;
        margin-top: 2px;
        padding-right: 40px;
        min-width: 0px;
        font-size: 14px;
        font-weight: normal;
        line-height: 24px;
        color: rgb(0, 0, 0);
        word-break: break-all;
        overflow: hidden;
        height: 24px;
        text-overflow: ellipsis;
        white-space: nowrap;
        text-indent: 22px;
    }
    css-1wmvtpx::before {
        content: "";
        position: absolute;
        top: 0px;
        left: -3px;
        width: 20px;
        height: 20px;
        background: url(https://img.29cm.co.kr/next29cm/product/qna_lock.png) 0% 0% / 20px 20px no-repeat;
    }
    .css-aaq76s {
        display: flex;
        flex-shrink: 0;
        min-width: 0px;
    }
    .css-1xdq1r6 {
        display: inline-flex;
        flex-shrink: 0;
        -webkit-box-pack: end;
        justify-content: flex-end;
        margin-top: 22px;
        font-size: 11px;
        line-height: 24px;
        color: rgb(0, 0, 0);
        width: 150px;
    }
    .css-8uhtka {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .css-8cxk5l {
        display: inline-flex;
        flex-shrink: 0;
        -webkit-box-pack: end;
        justify-content: flex-end;
        margin-top: 22px;
        font-size: 11px;
        line-height: 24px;
        color: rgb(0, 0, 0);
        width: 74px;
    }
    .css-q5n7xs {
        display: inline-flex;
        flex-shrink: 0;
        -webkit-box-pack: end;
        justify-content: flex-end;
        margin-top: 22px;
        font-size: 11px;
        line-height: 24px;
        color: rgb(0, 0, 0);
        width: 65px;
    }
    .css-xkg75d {
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        min-width: 35px;
        height: 24px;
        padding: 1px 0px;
        font-size: 12px;
        font-weight: 200;
        color: rgb(255, 255, 255);
        text-align: center;
        background: rgb(55, 95, 255);
        border-radius: 2px;
    }
    .css-1kw6o0w {
        position: absolute;
        right: 0px;
        bottom: 0px;
        left: 0px;
        height: 1px;
        margin: 0px;
        padding: 0px;
        background-color: rgb(228, 228, 228);
        border: 0px;
    }
    #product_qna {
        padding-left: 0;
    }
    .css-1wmvtpx::before {
        content: "";
        position: absolute;
        top: 0px;
        left: -3px;
        width: 20px;
        height: 20px;
        background: url(https://img.29cm.co.kr/next29cm/product/qna_lock.png) 0% 0% / 20px 20px no-repeat;
    }
    .css-f5ijgx {
        position: relative;
        margin-top: 2px;
        padding-right: 40px;
        min-width: 0px;
        font-size: 14px;
        font-weight: normal;
        line-height: 24px;
        color: rgb(0, 0, 0);
        word-break: break-all;
        overflow: hidden;
        height: 24px;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    /* 배송정보 교환 환불안내 */
    .css-1axy229 {
        margin-top: 80px;
        margin-left: 140px;
        margin-right: 150px;
    }
    .css-1j59ktc:first-of-type {
        margin-top: 0px;
    }
    .css-d15rx0 {
        padding-bottom: 13px;
        border-bottom: 4px solid rgb(0, 0, 0);
        line-height: 30px;
        font-size: 22px;
        font-weight: 700;
    }
    .css-2bwj7u {
        margin-top: 13px;
        line-height: 26px;
        font-size: 14px;
        padding-left: 0%;
    }
    @media (min-width: 541px) {
        .css-1lu4an7 {
            position: relative;
            padding-left: 12px;
            color: rgb(48, 48, 51);
            line-height: 26px;
        }
    }
    @media (min-width: 541px) {
        .css-1lu4an7::before {
            position: absolute;
            top: 11px;
            left: 0px;
            width: 3px;
            height: 3px;
            border-radius: 100%;
            background-color: rgb(48, 48, 51);
            content: "";
        }
    }

    /* Best 상품 안내 */
    .css-1sqa5e1 {
        content-visibility: auto;
        contain-intrinsic-size: 404px;
        overflow: hidden;
        margin-top: 70px;
        margin-left: 140px;
        margin-right: 140px;
    }
    .css-119szb1 {
        display: flex;
        -webkit-box-pack: justify;
        justify-content: space-between;
        margin-bottom: 15px;
        font-size: 22px;
        font-weight: bold;
        line-height: 30px;
    }
    .css-gszwq7 {
        margin: 12px 0px;
    }
    .css-16szog4 {
        position: relative;
        overflow: hidden;
        display: inline-block;
        min-height: 20px;
        line-height: 20px;
        margin-right: 6px;
    }
    .css-wm7oed {
        position: absolute;
        z-index: -10;
        top: -100%;
        left: -100%;
        width: 13px;
        height: 13px;
        background: transparent;
    }
    .css-wm7oed:checked + .e1r8czm21 {
        font-weight: 600;
    }
    .css-16szog4 input:checked + label {
        background-color: rgb(0, 0, 0);
        color: rgb(255, 255, 255);
        border: 1px solid rgb(0, 0, 0);
    }
    .css-16szog4 label {
        display: flex;
        -webkit-box-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        align-items: center;
        height: 31px;
        padding: 8px 14px 7px;
        border-radius: 16.5px;
        border: 1px solid rgb(228, 228, 228);
        font-family: AppleSDGothicNeo;
        font-size: 13px;
        font-weight: 500;
        background-color: rgb(255, 255, 255);
        color: rgb(93, 93, 93);
    }
    .css-yxewik {
        cursor: pointer;
        position: relative;
        z-index: 1;
        display: inline-block;
        padding-left: 27px;
        line-height: 20px;
        color: rgb(48, 48, 51);
    }
    .css-1m4f0m {
        margin: 0px -9px;
    }
    .css-1m4f0m .slide {
        position: relative;
        padding-bottom: 60px;
    }
    .css-mmkycr {
        width: 20%;
        padding: 0px 9px;
    }
    .css-79elbk {
        position: relative;
    }
    .css-17d7tlx {
        overflow: hidden;
        font-size: 13px;
        color: rgb(0, 0, 0);
    }
    .css-1so5xgc {
        position: relative;
        overflow: hidden;
        display: block;
        width: 100%;
        padding-top: 100%;
        background: rgb(245, 247, 246);
    }
    .css-aaltuk {
        position: absolute;
        top: 0px;
        bottom: 0px;
        left: 0px;
        width: 100%;
        margin: auto;
    }
    @media (min-width: 541px) {
        .css-xfiaz9 {
            width: 52px;
            height: 52px;
        }
    }   
    .css-xfiaz9 {
        position: absolute;
        z-index: 1;
        top: -4px;
        left: 0px;
        transform: translate3d(0px, 0px, 0px);
    }
    @media (min-width: 541px) {
        .css-s7yxw7 {
            transform: skew(0deg, -6deg);
        }
    }
    .css-s7yxw7 {
        position: absolute;
        inset: 0px;
        background-color: rgb(0, 0, 0);
    }
    .css-1atqnkr {
        position: absolute;
        inset: 0px;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        font-family: Campton;
        font-size: 18px;
        color: rgb(255, 255, 255);
    }
    .css-ltqa49 {
        display: flex;
        margin-top: 12px;
    }
    .css-16agjqd {
        overflow: hidden;
        width: 100%;
    }
    .css-1ocrzm4 {
        position: relative;
        overflow: hidden;
        display: block;
        margin-top: 6px;
        margin-bottom: 5px;
        font-size: 13px;
        font-weight: bold;
        line-height: 16px;
        color: rgb(0, 0, 0);
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    .css-18mjw15 {
        display: block;
        margin-top: 3px;
    }
    .css-1bz3l1k {
        overflow: hidden;
        display: -webkit-box;
        padding-right: 10%;
        font-weight: 400;
        line-height: 18px;
        color: rgb(0, 0, 0);
        text-overflow: ellipsis;
        word-break: break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
    }
    .css-1hda3uw {
        display: block;
        margin-top: 7px;
        font-size: 16px;
        font-weight: 600;
    }
    .css-1kt1fs {
        font-size: 13px;
        font-weight: 300;
        color: rgb(160, 160, 160);
    }
    .css-p7mzyt {
        margin-right: 1px;
        font-size: 16px;
        font-weight: 600;
        line-height: 17px;
        color: rgb(255, 72, 0);
    }
    .css-842lcu {
        color: rgb(0, 0, 0);
    }
    .css-zalwcv {
        display: inline-flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        height: 17px;
        margin-top: 8px;
        padding: 0px 6px;
        font-size: 10px;
        line-height: 1;
        color: rgb(29, 29, 29);
        background: rgb(244, 244, 244);
        border-radius: 2px;
    }

    /* 다른 고객이 구매한 상품 */
    .css-1jik08a {
        content-visibility: auto;
        contain-intrinsic-size: 404px;
        overflow: hidden;
        margin-top: 90px;
        margin-left : 140px;
        margin-right: 140px;
    }

    /*관련 이벤트 */
    .css-135dpyw{
        padding-left: 0;
    }
    .css-135dpyw {
        display: flex;
        flex-wrap: wrap;
        margin: 12px 0px 0px -8px;
    }
    .css-1trshyt {
        position: relative;
        width: 50%;
        padding-bottom: 30px;
        padding-left: 8px;
    }
    .css-1lvmlwe {
        padding-bottom: 42.8%;
        background-image: url(https://img.29cm.co.kr/next-edition/2024/02/06/d275da7…_20240206142330.jpg?width=500);
        background-position: center center;
        background-size: cover;
    }
    .css-1ep3pp5 {
        margin-top: 13px;
        color: rgb(0, 0, 0);
    }
    .css-c62ssp {
        font-size: 18px;
        font-weight: 500;
        line-height: 25px;
    }
    .css-1c3vj09 {
        margin-top: 6px;
        font-size: 12px;
        line-height: 16px;
    }
    .event-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        
    }
    
    .event-item {
        width: calc(25% - 10px); /* 4분할로 나누기 위해 25%의 너비 할당 */
        margin-bottom: 20px;
    }
    
    .event-item a {
        display: block;
        text-decoration: none;
        color: inherit;
    }
    
    .event-image {
        height: 200px; /* 이미지의 높이 설정 */
        background-size: cover;
        background-position: center;
    }
    .image1 {
        background-image: url('https://tse3.mm.bing.net/th?id=OIP._mxaJ2UVTBKA3NRTj073kAHaEK&pid=Api&P=0&h=220');
    }
    .css-uctowo {
        margin-left: 140px;
        margin-right: 140px;
    }

    /* 네비 */
    .css-1qi5uc2 {
        position: fixed;
        z-index: 5;
        right: 10px;
        bottom: 80px;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
    }
    .css-wuhjr5 {
        display: inline-flex;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        width: 34px;
        height: 34px;
        border-radius: 100%;
        background-color: rgb(0, 0, 0);
        cursor: pointer;
        margin-bottom: 6px;
    }
    .css-l5at91 {
        width: 12px;
    }
    .css-17mseqq {
        position: absolute;
        display: block;
        text-indent: -9999px;
    }
    .css-3310rc {
        overflow: hidden;
        display: inline-block;
        width: 34px;
        height: 34px;
        line-height: 100em;
        background: url(https://img.29cm.co.kr/next29cm/icon_scroll2.png) 0px 0px / 34px 68px no-repeat;
    }
    .css-1r1ons4 {
        overflow: hidden;
        display: inline-block;
        width: 34px;
        height: 34px;
        line-height: 100em;
        background: url(https://img.29cm.co.kr/next29cm/icon_scroll2.png) 0px -34px / 34px 68px no-repeat;
    }

</style>
</head>
<header>
	<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
</header>
<body>
    <div class="css-zqyuit e1uo4o523">	
        <div class="css-0 ehh6z820">
            <ul class="css-70qvj9 ehh6z821">
                <li class="css-wb64ex ehh6z822">
                    <div class="css-1iceoh8 eq96xsv4">
                        <div class="css-azx95j eq96xsv0"><span class="css-8ch9kd eq96xsv1">가구,인테리어</span><svg
                                class="css-9uy14h ezprv7h0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <g class="ctgr1" transform="matrix(1 0 0 -1 0 24)" fill="none" fill-rule="evenodd">
                                    <path class="ctgr2" d="M0 0h24v24H0z"></path>
                                    <path class="ctgr3" stroke="#000000" stroke-width="2" d="m16.545 13.727-4.554-4.545-4.536 4.526">
                                    </path>
                                    <circle class="ctgr4" stroke="#000000" stroke-width="2" cx="12" cy="12" r="10"></circle>
                                </g>
                            </svg></div>
                        
                    </div>
                </li>
                <li class="css-wb64ex ehh6z822">
                    <div class="css-1iceoh8 eq96xsv4">
                        <div class="css-azx95j eq96xsv0"><span class="css-8ch9kd eq96xsv1">홈프레그런스</span><svg
                                class="css-9uy14h ezprv7h0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <g class="ctgr1" transform="matrix(1 0 0 -1 0 24)" fill="none" fill-rule="evenodd">
                                    <path class="ctgr2" d="M0 0h24v24H0z"></path>
                                    <path class="ctgr3" stroke="#000000" stroke-width="2" d="m16.545 13.727-4.554-4.545-4.536 4.526">
                                    </path>
                                    <circle class="ctgr4" stroke="#000000" stroke-width="2" cx="12" cy="12" r="10"></circle>
                                </g>
                            </svg></div>
                        <div class="css-qoulyp eq96xsv2">
                            <ul>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291111100"
                                        class="css-1eew7kn eq96xsv3">비앤비이탈리아</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291114100"
                                        class="css-1eew7kn eq96xsv3">침구</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291112100"
                                        class="css-1eew7kn eq96xsv3">홈패브릭</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291103100"
                                        class="css-1eew7kn eq96xsv3">가구</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291104100"
                                        class="css-1eew7kn eq96xsv3">조명</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291105100"
                                        class="css-1eew7kn eq96xsv3">홈데코</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291106100"
                                        class="css-1eew7kn eq96xsv3">가드닝</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100"
                                        class="css-1eew7kn eq96xsv3">홈프레그런스</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291109100"
                                        class="css-1eew7kn eq96xsv3">아트,디자인</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291113100"
                                        class="css-1eew7kn eq96xsv3">책,음반</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291110100"
                                        class="css-1eew7kn eq96xsv3">스테이셔너리</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="css-wb64ex ehh6z822">
                    <div class="css-1iceoh8 eq96xsv4">
                        <div class="css-azx95j eq96xsv0"><span class="css-8ch9kd eq96xsv1">디퓨저</span><svg
                                class="css-9uy14h ezprv7h0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <g class="ctgr1" transform="matrix(1 0 0 -1 0 24)" fill="none" fill-rule="evenodd">
                                    <path class="ctgr2" d="M0 0h24v24H0z"></path>
                                    <path class="ctgr3" stroke="#000000" stroke-width="2" d="m16.545 13.727-4.554-4.545-4.536 4.526">
                                    </path>
                                    <circle class="ctgr4" stroke="#000000" stroke-width="2" cx="12" cy="12" r="10"></circle>
                                </g>
                            </svg></div>
                        <div class="css-qoulyp eq96xsv2">
                            <ul>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107101"
                                        class="css-1eew7kn eq96xsv3">인센스</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107102"
                                        class="css-1eew7kn eq96xsv3">캔들</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107103"
                                        class="css-1eew7kn eq96xsv3">디퓨저</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107104"
                                        class="css-1eew7kn eq96xsv3">룸스프레이</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107105"
                                        class="css-1eew7kn eq96xsv3">아로마,에센셜 오일</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107109"
                                        class="css-1eew7kn eq96xsv3">홀더,트레이</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107106"
                                        class="css-1eew7kn eq96xsv3">점화도구</a></li>
                                <li><a href="https://www.29cm.co.kr/shop/category/list?category_large_code=291100100&amp;category_medium_code=291107100&amp;category_small_code=291107107"
                                        class="css-1eew7kn eq96xsv3">프레그런스 액세서리</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="css-uio8sw e1uo4o521">
        <div class="css-1ux6qe5 e1uo4o525">
            <div class="css-y49a97 ek3ksls0"><a class="css-k95f3n ek3ksls1"
                    href="https://shop.29cm.co.kr/brand/9476"><img
                        src="https://img.29cm.co.kr/next-brand/2020/03/26/3649c0d5192c442da82a511c59f5ae1c_20200326171133.jpg?width=100"
                        alt="brand-image" loading="lazy" class="css-82vwid ek3ksls2">
                    <div class="css-14c9ube ek3ksls3">
                        <h3 class="css-1dncbyk ek3ksls4">쿤달</h3>
                        <p class="css-8e7eit ek3ksls5">프리미엄 케어 브랜드 쿤달</p>
                        <div class="css-kaibhs ek3ksls6"><button class="ek3ksls7 css-nzh9w2 e12h9sp60"
                                type="button">BRAND HOME</button></div>
                    </div>
                </a></div>
        </div>
        <div class="css-1y47rmj e18uevlq0">
            <div class="css-1nxhd22 enepqhc0">
                <div class="splide splide--slide splide--ltr splide--draggable is-active is-initialized" id="splide01"
                    role="region" aria-roledescription="carousel">
                    <div class="splide__track splide__track--slide splide__track--ltr splide__track--draggable"
                        id="splide01-track" style="padding-left: 0px; padding-right: 0px;" aria-live="polite"
                        aria-relevant="additions">
                        <ul class="splide__list" id="splide01-list" role="presentation"
                            style="transform: translateX(0px);">
                            <li class="splide__slide css-1vt3f8z enepqhc2 is-active is-visible" id="splide01-slide01"
                                role="tabpanel" aria-roledescription="slide" aria-label="1 of 5">
                                <div class="css-122y91a enepqhc4"><img
                                        src="https://img.29cm.co.kr/next-product/2023/01/26/c2501247c5744c27a983c311f6d20388_20230126101754.png?width=700"
                                        alt="" loading="eager" class="css-12qah06 enepqhc5"></div>
                            </li>
                            <li class="splide__slide css-1vt3f8z enepqhc2 is-next" id="splide01-slide02" role="tabpanel"
                                aria-roledescription="slide" aria-label="2 of 5" aria-hidden="true">
                                <div class="css-122y91a enepqhc4"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/80cb61c8cf0c4b709f9fab214d7ca7b3_20220801134234.jpg?width=700"
                                        alt="" loading="lazy" class="css-12qah06 enepqhc5"></div>
                            </li>
                            <li class="splide__slide css-1vt3f8z enepqhc2" id="splide01-slide03" role="tabpanel"
                                aria-roledescription="slide" aria-label="3 of 5" aria-hidden="true">
                                <div class="css-122y91a enepqhc4"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/c853e61a1f134dcdb0e83944a5ba5c54_20220801134225.jpg?width=700"
                                        alt="" loading="lazy" class="css-12qah06 enepqhc5"></div>
                            </li>
                            <li class="splide__slide css-1vt3f8z enepqhc2" id="splide01-slide04" role="tabpanel"
                                aria-roledescription="slide" aria-label="4 of 5" aria-hidden="true">
                                <div class="css-122y91a enepqhc4"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/9dfac4fe784c42039396461652b1a68d_20220801134229.jpg?width=700"
                                        alt="" loading="lazy" class="css-12qah06 enepqhc5"></div>
                            </li>
                            <li class="splide__slide css-1vt3f8z enepqhc2" id="splide01-slide05" role="tabpanel"
                                aria-roledescription="slide" aria-label="5 of 5" aria-hidden="true">
                                <div class="css-122y91a enepqhc4"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/47f3046abca84d57bf420cc52815019d_20220801142902.jpg?width=700"
                                        alt="" loading="lazy" class="css-12qah06 enepqhc5"></div>
                            </li>
                        </ul>
                    </div>
                    <div class="splide__arrows css-1x8q3p5 enepqhc1 splide__arrows--ltr"><button
                            class="splide__arrows splide__arrow--prev enepqhc8 css-uw6dxe e12h9sp60" type="button"
                            disabled="" aria-label="Previous slide" aria-controls="splide01-track"><svg
                                class="enepqhc10 css-19ilmue e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 42 80">
                                <path class="slide_arrow1" d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#000000"
                                    stroke-width="5"></path>
                            </svg></button><button
                            class="splide__arrows splide__arrow--next enepqhc7 css-1l4yul5 e12h9sp60" type="button"
                            aria-label="Next slide" aria-controls="splide01-track"><svg
                                class="enepqhc9 css-fc0kkr e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 42 80">
                                <path class="slide_arrow2" d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#000000"
                                    stroke-width="5"></path>
                            </svg></button></div>
                    <ul class="splide__pagination splide__pagination--ltr" role="tablist"
                        aria-label="Select a slide to show">
                        <li role="presentation"><button class="splide__pagination__page is-active" type="button"
                                role="tab" aria-controls="splide01-slide01" aria-label="Go to slide 1"
                                aria-selected="true"></button></li>
                        <li role="presentation"><button class="splide__pagination__page" type="button" role="tab"
                                aria-controls="splide01-slide02" aria-label="Go to slide 2" tabindex="-1"></button></li>
                        <li role="presentation"><button class="splide__pagination__page" type="button" role="tab"
                                aria-controls="splide01-slide03" aria-label="Go to slide 3" tabindex="-1"></button></li>
                        <li role="presentation"><button class="splide__pagination__page" type="button" role="tab"
                                aria-controls="splide01-slide04" aria-label="Go to slide 4" tabindex="-1"></button></li>
                        <li role="presentation"><button class="splide__pagination__page" type="button" role="tab"
                                aria-controls="splide01-slide05" aria-label="Go to slide 5" tabindex="-1"></button></li>
                    </ul>
                </div>
            </div>
            <div class="css-3eeht e18uevlq1">
                <div class="css-uz7uc7 ek83fdm0">
                    <div class="css-1k84vqv ek83fdm1">
                        <div class="css-e9pho6 ek83fdm2">
                            <div>
                                <div translate="no"><a class="css-14q0h0e ek83fdm3"
                                        href="https://shop.29cm.co.kr/brand/9476">쿤달<!-- --> <svg
                                            class="ek83fdm4 css-pd2let e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 42 80">
                                            <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd"
                                                stroke="#5d5d5d" stroke-width="10"></path>
                                        </svg></a></div>
                                <h2 id="pdp_product_name" class="css-xz8ybi ek83fdm5">오브제 바이 쿤달 퍼퓸 볼케니크 스톤 디퓨저
                                    Volcanique STONE Diffuser</h2>
                            </div>
                            <div class="css-1gyviqy ek83fdm6"><button class="e1xxmqg30 css-1qwq84l e12h9sp60"
                                    type="button"><svg class="css-kglvp1 e1xxmqg31" xmlns="http://www.w3.org/2000/svg"
                                        viewBox="0 0 18 18">
                                        <path class="heart"
                                            d="M9 6.088C9 3.831 10.791 2 13 2s4 1.83 4 4.088c0 1.743-1.46 3.23-1.46 3.23L9 16 2.46 9.318S1 7.83 1 6.088C1 3.831 2.791 2 5 2s4 1.83 4 4.088z"
                                            fill="#ffffff" fill-rule="evenodd" stroke="#5d5d5d" stroke-width="0.7">
                                        </path>
                                    </svg><span class="css-17mseqq e1xxmqg32">찜하기</span></button></div>
                        </div>
                        <div class="css-1ilqvfb e1k6f1kl0">
                            <div class="css-nbg1jm e1k6f1kl1">
                                <div class="css-18biwo e1piy9l40"><i class="css-9nop8 e1piy9l41"><svg
                                            xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                            viewBox="0 0 13 12">
                                            <path class="star" fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                            </path>
                                        </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                width="10" height="10" viewBox="0 0 13 12">
                                                <path class="star2" fill="#000000" fill-rule="evenodd" stroke="#000000"
                                                    stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                            xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                            viewBox="0 0 13 12">
                                            <path class="star" fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                            </path>
                                        </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                width="10" height="10" viewBox="0 0 13 12">
                                                <path class="star2" fill="#000000" fill-rule="evenodd" stroke="#000000"
                                                    stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                            xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                            viewBox="0 0 13 12">
                                            <path class="star" fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                            </path>
                                        </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                width="10" height="10" viewBox="0 0 13 12">
                                                <path class="star2" fill="#000000" fill-rule="evenodd" stroke="#000000"
                                                    stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                            xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                            viewBox="0 0 13 12">
                                            <path class="star" fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                            </path>
                                        </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                width="10" height="10" viewBox="0 0 13 12">
                                                <path class="star2" fill="#000000" fill-rule="evenodd" stroke="#000000"
                                                    stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                            xmlns="http://www.w3.org/2000/svg" width="10" height="10"
                                            viewBox="0 0 13 12">
                                            <path class="star" fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                            </path>
                                        </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                width="10" height="10" viewBox="0 0 13 12">
                                                <path class="star2" fill="#000000" fill-rule="evenodd" stroke="#000000"
                                                    stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg></i></i></div>
                            </div><button type="button" class="css-mfscko e1k6f1kl2">965<!-- -->개 리뷰 보기</button>
                        </div>
                        <div class="css-lcoy4n ek83fdm7">
                            <div class="css-1rr4qq7 ejuizc30">
                                <p class="css-1bci2fm ejuizc31">40,500</p>
                                <div class="css-h6obet ejuizc33">
                                    <div><span class="css-1jsmahk ejuizc32">5%</span><span id="pdp_product_price"
                                            class="css-4bcxzt ejuizc34">38,500<em
                                                class="css-a5v5ts ejuizc35">원</em></span></div>
                                    <div class="css-1cevk7j ep1otq20">
                                        <div><button class="e1idwjus0 css-1gchlp8 e12h9sp60" type="button">쿠폰받기<svg
                                                    class="css-qzxgwt e1idwjus1" viewBox="0 0 9 9">
                                                    <g class="g_coupon_download" fill="#ffffff" fill-rule="evenodd">
                                                        <path class="p_coupon_download1" fill="none" d="M0 0h9v9H0z"></path>
                                                        <path class="p_coupon_download2"
                                                            d="M7.284 4.243 4.625 6.695l-.292.275-.003-.003v.001l-.673-.626.002-.002-2.23-2.083.733-.582 1.665 1.607L3.828 0h.937v5.339l1.856-1.678.663.582zm.31 3.505v.943h-6.54v-.943h6.54z">
                                                        </path>
                                                    </g>
                                                </svg></button></div>
                                    </div>
                                </div>
                                <p class="css-52zi8k ebobx0d0">385p (1%) 적립</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="css-0 easzzdg1">
                    <div class="e1egnq760 css-enxt79 e1tt1b990">
                        <div class="css-1n5ilnb e60he1z0">
                            <div class="css-7boy05 e60he1z2">
                                <div class="css-1eaetqv e60he1z3">
                                    <div class="css-1ueg5w e60he1z4">
                                        <h3 class="e60he1z5 css-mmrttp e1q77p0w0" color="primary">나의 구매 가능 가격</h3>
                                        <div class="css-x1sij0 e1k05gfc0"><button class="css-1g7qv4a e1k05gfc1"
                                                type="button"><svg xmlns="http://www.w3.org/2000/svg"
                                                    class="css-1udwh3t e60he1z6" width="20" height="20"
                                                    viewBox="0 0 20 20" fill="none">
                                                    <path class="view_explanation1" fill-rule="evenodd" clip-rule="evenodd"
                                                        d="M18.3332 9.99999C18.3332 14.6024 14.6022 18.3333 9.99984 18.3333C5.39746 18.3333 1.6665 14.6024 1.6665 9.99999C1.6665 5.39762 5.39746 1.66666 9.99984 1.66666C14.6022 1.66666 18.3332 5.39762 18.3332 9.99999ZM9.99984 17.5C14.142 17.5 17.4998 14.1421 17.4998 9.99999C17.4998 5.85785 14.142 2.49999 9.99984 2.49999C5.8577 2.49999 2.49984 5.85785 2.49984 9.99999C2.49984 14.1421 5.8577 17.5 9.99984 17.5Z"
                                                        fill="var(--ruler-scale-color-gray-400)"></path>
                                                    <path class="view_explanation2"
                                                        d="M8.98441 12.2742C9.00601 10.6746 9.76938 10.3477 10.7704 9.7287C11.4978 9.27663 11.9227 8.7411 11.9227 7.97606C11.9227 6.94674 11.0873 6.2582 10.0358 6.26515C9.05642 6.2582 8.17782 6.88414 8.12021 8.07343H7.08317C7.13358 6.44598 8.40827 5.41666 10.0358 5.41666C11.7498 5.41666 12.9165 6.51553 12.9165 8.01779C12.9165 9.03321 12.4268 9.74261 11.4762 10.3407C10.5544 10.911 9.99984 11.1753 9.97823 12.2742V12.5107H8.98441V12.2742ZM8.68914 13.846C8.68914 13.4357 9.04202 13.1018 9.46692 13.0949C9.88461 13.1018 10.2303 13.4357 10.2303 13.846C10.2303 14.2494 9.88461 14.5902 9.46692 14.5832C9.04202 14.5902 8.68914 14.2494 8.68914 13.846Z"
                                                        fill="var(--ruler-scale-color-gray-400)"></path>
                                                </svg><span class="css-17mseqq e1k05gfc5">툴팁</span></button>
                                            <div class="css-jtvhsa e1k05gfc3"><span
                                                    class="e1k05gfc4 css-i5lk9o e1q77p0w0" color="secondary">
                                                    <ul class="css-0 ew8veqf0">
                                                        <li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
                                                            <div class="css-38xa9a ew8veqf2">구매 가능 가격은 옵션 한 개의 금액으로
                                                                계산됩니다.</div>
                                                        </li>
                                                        <li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
                                                            <div class="css-38xa9a ew8veqf2">구매 가능 가격은 확인 용도로만 사용할 수
                                                                있습니다.</div>
                                                        </li>
                                                        <li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
                                                            <div class="css-38xa9a ew8veqf2">상품쿠폰과 장바구니 쿠폰을 중복으로 사용할 수
                                                                있습니다. 단, <em>중복 불가 상품 쿠폰의 경우 장바구니 쿠폰과 중복 불가능<em> 합니다.
                                                                    </em></em></div>
                                                        </li>
                                                        <li class="ew8veqf1 css-1gdpno1 e1q77p0w0" color="secondary">
                                                            <div class="css-38xa9a ew8veqf2">장바구니 쿠폰은 상품쿠폰이 사용된 후 가격을
                                                                기준으로 추가 할인이 반영됩니다.</div>
                                                        </li>
                                                    </ul>
                                                </span></div>
                                        </div>
                                    </div>
                                    <div class="css-79elbk e1x3va4u0">
                                        <div class="e60he1z10 css-1otzfd9 e1x3va4u1">카드, 마일리지 추가 할인도 확인하세요</div><button
                                            type="button" class="css-10bxcp7 e60he1z7">
                                            <div class="css-a8kslq e60he1z8">
                                                <div class="css-zqatfe e60he1z9"><span
                                                        class="e60he1z12 css-u757q e1q77p0w0"
                                                        color="tertiary">19%</span><span
                                                        class="e60he1z13 css-1kj9qon e1q77p0w0"
                                                        color="primary">32,725<span
                                                            class="css-14gt3bc e60he1z14">원</span></span></div>
                                            </div><svg class="e60he1z11 eobi4ha0 css-1bz6w5x e11s8l6m0"
                                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 16">
                                                <g class="view_down1" fill="none" fill-rule="evenodd"
                                                    stroke="var(--ruler-semantic-color-text-primary)" stroke-width="2">
                                                    <path class="view_down2" d="M28 1L13.97 15 0 1.058"></path>
                                                </g>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="css-17qwfjj e18fti9d0">
                    <h3 class="e18fti9d1 css-a4fgns e1q77p0w0" color="secondary">무이자 할부</h3>
                    <div class="css-1slczgn e18fti9d2"><button class="css-70qvj9 e18fti9d3"><span
                                class="css-x0q8ne e1q77p0w0" color="secondary">카드사별 할부 혜택 안내</span><svg
                                class="css-acbihw e18fti9d4" width="12px" height="15px" viewBox="0 0 12 12">
                                <g class="installmentInfo1" fill="none" fill-rule="evenodd">
                                    <path class="installmentInfo2" d="M0 0h12v12H0z"></path>
                                    <path class="installmentInfo3" stroke="#a0a0a0" d="m4.5 2.155 3.89 3.889L4.5 9.933"></path>
                                </g>
                            </svg></button></div>
                </div>
                <div class="css-1kw04qr ece6ua20">
                    <ul class="ul_shipping_info">
                        <li class="css-32ihlf ece6ua25"><span class="ece6ua21 css-6jcthz e1q77p0w0"
                                color="secondary">배송정보<div class="css-x1sij0 e163vncv0"><button
                                        class="ece6ua27 css-1behjaf e163vncv1" type="button"><svg
                                            xmlns="http://www.w3.org/2000/svg" class="css-1udwh3t ece6ua26" width="20"
                                            height="20" viewBox="0 0 20 20" fill="none">
                                            <path class="shipping_tooltip1" fill-rule="evenodd" clip-rule="evenodd"
                                                d="M18.3332 9.99999C18.3332 14.6024 14.6022 18.3333 9.99984 18.3333C5.39746 18.3333 1.6665 14.6024 1.6665 9.99999C1.6665 5.39762 5.39746 1.66666 9.99984 1.66666C14.6022 1.66666 18.3332 5.39762 18.3332 9.99999ZM9.99984 17.5C14.142 17.5 17.4998 14.1421 17.4998 9.99999C17.4998 5.85785 14.142 2.49999 9.99984 2.49999C5.8577 2.49999 2.49984 5.85785 2.49984 9.99999C2.49984 14.1421 5.8577 17.5 9.99984 17.5Z"
                                                fill="var(--ruler-scale-color-gray-400)"></path>
                                            <path class="shipping_tooltip2"
                                                d="M8.98441 12.2742C9.00601 10.6746 9.76938 10.3477 10.7704 9.7287C11.4978 9.27663 11.9227 8.7411 11.9227 7.97606C11.9227 6.94674 11.0873 6.2582 10.0358 6.26515C9.05642 6.2582 8.17782 6.88414 8.12021 8.07343H7.08317C7.13358 6.44598 8.40827 5.41666 10.0358 5.41666C11.7498 5.41666 12.9165 6.51553 12.9165 8.01779C12.9165 9.03321 12.4268 9.74261 11.4762 10.3407C10.5544 10.911 9.99984 11.1753 9.97823 12.2742V12.5107H8.98441V12.2742ZM8.68914 13.846C8.68914 13.4357 9.04202 13.1018 9.46692 13.0949C9.88461 13.1018 10.2303 13.4357 10.2303 13.846C10.2303 14.2494 9.88461 14.5902 9.46692 14.5832C9.04202 14.5902 8.68914 14.2494 8.68914 13.846Z"
                                                fill="var(--ruler-scale-color-gray-400)"></path>
                                        </svg><span class="css-17mseqq e163vncv5">툴팁</span></button>
                                    <div class="css-jtvhsa e163vncv3"><span class="e163vncv4 css-i5lk9o e1q77p0w0"
                                            color="secondary">판매자가 설정한 정보로, 업체 및 상품 상황에 따라 변경될 수 있습니다. 주말, 공휴일을 제외한
                                            영업일(평일) 기준입니다.</span></div>
                                </div></span>
                            <div class="css-rgis3z ece6ua22">
                                <div class="css-wpwytb e1dgcwzw0"><span class="css-6fhy8c e1q77p0w0"
                                        color="interactive">2<!-- -->일 이내 출고</span></div>
                            </div>
                        </li>
                        <li class="css-32ihlf ece6ua25"><span class="ece6ua21 css-6jcthz e1q77p0w0"
                                color="secondary">배송비</span>
                            <div class="css-rgis3z ece6ua22">
                                <p class="css-6fhy8cc e1q77p0w0" color="interactive">2,500원</p>
                                <p class="css-ac5pa2 e1q77p0w0" color="secondary">9,800<!-- -->원 이상 구매시 무료배송</p>
                                <p class="css-ac5pa2 e1q77p0w0" color="secondary">제주/도서산간<!-- --> <!-- -->3,000원 추가</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="css-ozyn3l e18uevlq3">
                    <div class="css-129gw94 e1uqcbdd5">
                        <div class="css-0 ed3wcbu0">
                            <div class="ed3wcbu1 css-1rhyn18 e15gsm0h0">
                                <div id="" role="button" class="css-79elbk e15gsm0h3"><input
                                        class="e15gsm0h1 css-qmbng6 e1u1pays0" placeholder="향기" autocapitalize="none"
                                        type="text" readonly="" value=""><svg class="e15gsm0h2 css-cs4h3q e11s8l6m0"
                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 16">
                                        <g class="select_option1" fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="3">
                                            <path class="select_option2" d="M28 1L13.97 15 0 1.058"></path>
                                        </g>
                                    </svg></div>
                            </div>
                        </div>
                    </div>
                    <div class="css-jna93d e1aklvx10"><button id="pdp_shopping_basket"
                            class="e1aklvx11 eh8h1ux0 css-vqh4y e12h9sp60 cartbtn" type="button"><a href="/sentiBoard/list/cartIn.do?pd_id=2">장바구니 담기</a></button><button
                            id="pdp_buy_now" class="e1aklvx12 er7ti0m0 css-103n73x e12h9sp60" type="button">바로
                            구매하기</button></div>
                </div>
            </div>
        </div>
    </div>
    <section class="css-5jl7kz e1uo4o527">
        <section class="css-1l6r90u ed08qdi0"><button class="ed08qdi1 css-1kzibha e12h9sp60" type="button">상품정보<svg
                    class="ed08qdi3 css-bjblx9 e11s8l6m0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 16">
                    <g class="product_info_view1" fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="3">
                        <path class="product_info_view2" d="M28 1L13.97 15 0 1.058"></path>
                    </g>
                </svg></button>
            <div class="css-ckmsfc ed08qdi2">
                <div class="css-k008qs e3cblyz0">
                    <h3 class="css-ysqghp e3cblyz1">상품번호 :</h3>&nbsp;<span>1649396</span>
                </div>
            </div>
        </section>
        <section class="e3cblyz3 css-e3b3e9 ed08qdi0"><button class="ed08qdi1 css-1kzibha e12h9sp60"
                type="button">브랜드알림<svg class="ed08qdi3 css-bjblx9 e11s8l6m0" xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 28 16">
                    <g class="product_info_view1" fill="none" fill-rule="evenodd" stroke="rgb(212, 212, 212)" stroke-width="3">
                        <path class="product_info_view2" d="M28 1L13.97 15 0 1.058"></path>
                    </g>
                </svg></button>
            <div class="css-ckmsfc ed08qdi2">
                <p class="css-l57rop e3cblyz2">Scent My Life, KUNDAL<br>모든 순간 당신을 향기롭게</p>
            </div>
        </section>
    </section>
    <div class="css-edibn e1uo4o522">
        <div class="e5a7l9l0 css-1wvn7e9 e1esfft0">
            <div class="css-cqao5e e1esfft1">
                <section class="e1esfft3 css-6rwnxw eh4qm8i0">
                    <h2 class="css-1u363o eh4qm8i1">상품 설명</h2>
                    <div>
                        <div class="react-transform-wrapper transform-component-module_wrapper__1_Fgj "
                            style="width:100%">
                            <div class="react-transform-component transform-component-module_content__2jYgh "
                                style="width: 100%; transform: translate3d(0px, 0px, 0px) scale(1);">
                                <div class="css-1jymsv8 eh4qm8i2"></div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="css-dluqe2 e1esfft2">
                    <div class="react-transform-wrapper transform-component-module_wrapper__1_Fgj " style="width:100%">
                        <div class="react-transform-component transform-component-module_content__2jYgh "
                            style="width: 100%; transform: translate3d(0px, 0px, 0px) scale(1);">
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/14488922e63c4335a6dc4f9062a3f00e_20220801142011.gif?width=1000"
                                        alt="" loading="lazy" class="css-1j3v5r6 e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/28b8eb6546eb4085a97abaeb9a1cf4ef_20220801145944.gif?width=1000"
                                        alt="" loading="lazy" class="css-1i8e379 e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/e190696203064e538c25cdbfc025c985_20220801142921.jpg?width=1000"
                                        alt="" loading="lazy" class="css-xydx6f e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/06782838034c45c185646f392ef8be8d_20220823102053.jpg"
                                        alt="" loading="lazy" class="css-1urinh9 e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/6af2494a2c8544f28a3ca71472d31150_20220823102109.jpg"
                                        alt="" loading="lazy" class="css-ywucxc e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/9d0a4f1a3de04817a1a6f2b3269600aa_20220823102126.jpg"
                                        alt="" loading="lazy" class="css-1adlh0m e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/3d4d4d8f6c634f1488afe3f950e674aa_20220823102139.jpg"
                                        alt="" loading="lazy" class="css-er8ply e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/e38724d6671746a0a57f09b65daf4dd3_20220823102146.jpg"
                                        alt="" loading="lazy" class="css-1scxc5e e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/9132f57a7e44482bb3ea1dc53cef27df_20220823102355.jpg"
                                        alt="" loading="lazy" class="css-wr87ye e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/9b8ea58df3b1406689be74f9d175b4b6_20220823102402.jpg"
                                        alt="" loading="lazy" class="css-lpxp9d e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/7c1812a933fa4d7e9bf5f96d0d465567_20220823102411.jpg"
                                        alt="" loading="lazy" class="css-lpxp9d e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/79f3f05313134f11a0a5aadb03552c99_20220823102418.jpg"
                                        alt="" loading="lazy" class="css-1bz5kv5 e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/bd1e9f76291446568810920eb3b1d877_20220823102427.gif"
                                        alt="" loading="lazy" class="css-v3s4m6 e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/9ae66d9fc03c4db683a0b78e44ff2508_20220823102432.jpg"
                                        alt="" loading="lazy" class="css-9bagql e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/0161bcad0fc84dac8763d3bd1195fd3d_20220823102450.jpg"
                                        alt="" loading="lazy" class="css-1x34r7s e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/158423a32c3e48fc9352545ec43910a5_20220823102457.jpg"
                                        alt="" loading="lazy" class="css-156eoe4 e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/0e26993fe4ca48b28d08f71c37871fff_20220823102505.jpg"
                                        alt="" loading="lazy" class="css-1yu4n1w e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/6060e1b4f1ef4edca3ba6564664f3955_20220823102511.jpg"
                                        alt="" loading="lazy" class="css-hfvqfh e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/bc903740c95e4cd5bf21315f28bf84e7_20220823102523.jpg"
                                        alt="" loading="lazy" class="css-1dupgxg e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/72e9c6d2da684f8d8e0691bfdcb31a6d_20220823102530.jpg"
                                        alt="" loading="lazy" class="css-1rjk2ix e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/23/ed2478261a134d02b6cee81e73df9d4a_20220823102535.jpg"
                                        alt="" loading="lazy" class="css-1w6p6oe e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/9e051f5017df4a9081bf335b554936b1_20220801145911.gif?width=1000"
                                        alt="" loading="lazy" class="css-9zq42x e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/08/01/a3dba8f8c48e4712bd984b181c59fe09_20220801142211.gif?width=1000"
                                        alt="" loading="lazy" class="css-15yvzh9 e1bfolfl2"></div>
                            </div>
                            <div class="css-17yt8te e1bfolfl0">
                                <div class="css-0 e1bfolfl1"><img
                                        src="https://img.29cm.co.kr/next-product/2022/12/29/aa2a24a6bcd54b058463d15cdc74cbc5_20221229153639.jpg"
                                        alt="" loading="lazy" class="css-1b1t0j7 e1bfolfl2"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div></div>
            <div class="css-1j6c1k1 e1esfft4"><button class="efgb0b60 css-h7utre e12h9sp60" type="button">상품설명 더보기 <svg
                        class="eobi4ha0 css-1hwrpy e11s8l6m0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 16">
                        <g fill="none" fill-rule="evenodd" stroke="#000000" stroke-width="3">
                            <path d="M28 1L13.97 15 0 1.058"></path>
                        </g>
                    </svg></button></div>
        </div>
        <section class="e5a7l9l3 css-1bl1yo e1ksxhs30">
            <div class="css-xcktox e1ksxhs32">
                <h2 class="css-14lcz5m e1ksxhs33"></h2>
                <div class="css-gcbtkb e1ksxhs34"></div>
            </div>
        </section>
        <section class="e5a7l9l4 css-1wi5uwm e1hw6jas0">
            <h2 class="css-9kbqwj e1hw6jas1">상품정보 보기</h2>
            <table class="e1hw6jas2 css-1x7jfi1 exbpx9h0">
                <tbody>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">품명 및 모델명</th>
                        <td class="css-q35or5 exbpx9h2">오브제 바이 쿤달 퍼퓸 볼케니크 스톤 디퓨저</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">법에 의한 인증·허가 등을 받았음을 확인할 수 있는 경우 그에 대한 사항</th>
                        <td class="css-q35or5 exbpx9h2">해당없음</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">제조국 또는 원산지</th>
                        <td class="css-q35or5 exbpx9h2">대한민국</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">제조자</th>
                        <td class="css-q35or5 exbpx9h2">(주)더스킨팩토리</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">A/S 책임자와 전화번호 또는 소비자 상담 관련 전화번호</th>
                        <td class="css-q35or5 exbpx9h2">1899-5451</td>
                    </tr>
                </tbody>
            </table>
        </section>
        <section class="e5a7l9l5 css-1wi5uwm e1s1ulg40">
            <h2 class="css-9kbqwj e1s1ulg41">판매자정보</h2>
            <table class="e1s1ulg42 css-1x7jfi1 exbpx9h0">
                <tbody>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">상호명</th>
                        <td class="css-q35or5 exbpx9h2">주식회사 더스킨팩토리</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">사업자등록번호</th>
                        <td class="css-q35or5 exbpx9h2">6698800530</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">통신판매업번호</th>
                        <td class="css-q35or5 exbpx9h2">2019-서울강남-01289</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">대표자</th>
                        <td class="css-q35or5 exbpx9h2">노현준</td>
                    </tr>
                    <tr>
                        <th class="css-f2rgan exbpx9h1">사업장 소재지</th>
                        <td class="css-q35or5 exbpx9h2">(06069) 서울특별시 강남구 청담동 41-2 금하빌딩 3층(청담동, 금하빌딩)</td>
                    </tr>
                </tbody>
            </table>
        </section>
        <section class="e5a7l9l14 css-r9lnna e12nq64q0">
            <div class="css-1e3m3k1 e12nq64q1"><span translate="no" class="css-cs9g2x e12nq64q4">쿤달</span>
                <h2 translate="no" class="css-1oj7gx8 e12nq64q5">KUNDAL</h2>
                <p class="css-jai8i e12nq64q6">프리미엄 케어 브랜드 쿤달</p>
                <div class="css-1xaekgw e12nq64q7"><button class="e12nq64q8 css-1b4nt2n e12h9sp60" type="button"><svg
                            class="css-1q42te3 e12nq64q9" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18">
                            <path
                                d="M9 6.088C9 3.831 10.791 2 13 2s4 1.83 4 4.088c0 1.743-1.46 3.23-1.46 3.23L9 16 2.46 9.318S1 7.83 1 6.088C1 3.831 2.791 2 5 2s4 1.83 4 4.088z"
                                fill="none" fill-rule="evenodd" stroke="#ffffff" stroke-width="0.7"></path>
                        </svg><span class="css-rw02hl e12nq64q10">809</span></button></div>
            </div><a class="css-1eangog e12nq64q2" href="https://shop.29cm.co.kr/brand/9476" style="color: rgb(255, 255, 255); text-decoration: none;">Brand Home <svg
                    class="e12nq64q3 css-1dmv4kt e1lbk5wo0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 33 7">
                    <path d="M28 4H0V3h28V0l5 3.5L28 7V4z" fill="#ffffff" fill-rule="evenodd"></path>
                </svg></a>
        </section>
        <div class="e5a7l9l15 css-c9lclf e1iw007b0">
            <h2 class="css-1vy2ajr e1iw007b1">동일 브랜드 다른 상품<a class="css-kz79nd e1iw007b2"
                    href="https://shop.29cm.co.kr/brand/9476">더보기</a></h2>
            <div class="css-1m4f0m e14m9clw0">
                <div class="splide slide splide--slide splide--ltr splide--draggable is-active is-initialized"
                    id="splide02" role="region" aria-roledescription="carousel">
                    <div class="splide__track splide__track--slide splide__track--ltr splide__track--draggable"
                        id="splide02-track" aria-live="polite" aria-relevant="additions"
                        style="padding-left: 0px; padding-right: 0px;">
                        <ul class="splide__list" id="splide02-list" role="presentation"
                            style="transform: translateX(0px);">
                            <li class="splide__slide css-mmkycr e14m9clw1 is-active is-visible" gap="18" width="20%"
                                id="splide02-slide01" role="group" aria-roledescription="slide" aria-label="1 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/1649396?source=item_detail&amp;source_type=same_brand">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2023/01/26/c2501247c5744c27a983c311f6d20388_20230126101754.png?width=300"
                                                    alt="오브제 바이 쿤달 퍼퓸 볼케니크 스톤 디퓨저 Volcanique STONE Diffuser"
                                                    loading="lazy" class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/1649396?source=item_detail&amp;source_type=same_brand">
                                                    <h4 class="css-1bz3l1k e30ofrd11">오브제 바이 쿤달 퍼퓸 볼케니크 스톤 디퓨저
                                                        Volcanique STONE Diffuser</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">40,500원</div><span
                                                            class="css-p7mzyt e30ofrd14">5%</span><span
                                                            class="css-842lcu e30ofrd15">38,500원</span>
                                                    </div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible is-next" gap="18" width="20%"
                                id="splide02-slide02" role="group" aria-roledescription="slide" aria-label="2 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/1806283?source=item_detail&amp;source_type=same_brand">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/11/02/5b3ae95706a34f4f8219a66b2c5d0af4_20221102092432.jpg?width=300"
                                                    alt="오브제 바이 쿤달 퍼퓸 볼케니크 스톤디퓨저 프래그런스 오일 10ml 2개 구성" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/1806283?source=item_detail&amp;source_type=same_brand">
                                                    <h4 class="css-1bz3l1k e30ofrd11">오브제 바이 쿤달 퍼퓸 볼케니크 스톤디퓨저 프래그런스 오일
                                                        10ml 2개 구성</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">17,000원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%"
                                id="splide02-slide03" role="group" aria-roledescription="slide" aria-label="3 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2111347?source=item_detail&amp;source_type=same_brand">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2023/06/09/7ea2f6ac26d94c08b5e4085d93c1fb29_20230609182629.jpg?width=300"
                                                    alt="티트리 바이오틱스 아크네 바디워시 500ml [애플그린티]" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2111347?source=item_detail&amp;source_type=same_brand">
                                                    <h4 class="css-1bz3l1k e30ofrd11">티트리 바이오틱스 아크네 바디워시 500ml [애플그린티]
                                                    </h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">15,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%"
                                id="splide02-slide04" role="group" aria-roledescription="slide" aria-label="4 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2050169?source=item_detail&amp;source_type=same_brand">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2023/04/28/878726a6473f452caae2cc86c691def8_20230428160639.jpg?width=300"
                                                    alt="클래식 무드 딥퍼퓸 차량용 방향제 클립형 본품 [다크그레이] (디바이스 1ea + 리필 2ea)"
                                                    loading="lazy" class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2050169?source=item_detail&amp;source_type=same_brand">
                                                    <h4 class="css-1bz3l1k e30ofrd11">클래식 무드 딥퍼퓸 차량용 방향제 클립형 본품 [다크그레이]
                                                        (디바이스 1ea + 리필 2ea)</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">36,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%"
                                id="splide02-slide05" role="group" aria-roledescription="slide" aria-label="5 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2340135?source=item_detail&amp;source_type=same_brand">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202312/11ee9342e6fba4ef8a7ff513970b77c2.jpg?width=300"
                                                    alt="오브제 바이 쿤달 퍼퓸드 헤어미스트 40ml" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2340135?source=item_detail&amp;source_type=same_brand">
                                                    <h4 class="css-1bz3l1k e30ofrd11">오브제 바이 쿤달 퍼퓸드 헤어미스트 40ml</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">24,500원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide06"
                                role="group" aria-roledescription="slide" aria-label="6 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2598073?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202405/11ef0c0684c366e6892b4b9dbfc7a499.jpg?width=300"
                                                    alt="[쿤달 데미지 x 바비 콜라보] 프로틴 데미지 헤어 케어 세트 바비 데님 에디션" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2598073?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">[쿤달 데미지 x 바비 콜라보] 프로틴 데미지 헤어 케어 세트
                                                        바비 데님 에디션</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">32,400원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide07"
                                role="group" aria-roledescription="slide" aria-label="7 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/635581?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2020/12/24/b0a8d7651f594feb9871c721b138a5fc_20201224142345.jpg?width=300"
                                                    alt="퓨어 앤 세이프 시그니처 실버에디션 아기 물티슈 70매 10팩" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/635581?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">퓨어 앤 세이프 시그니처 실버에디션 아기 물티슈 70매 10팩
                                                    </h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">25,000원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide08"
                                role="group" aria-roledescription="slide" aria-label="8 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/682059?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2020/11/24/a968e0e22c9e4fa3bdb3f82f0b879f9d_20201124165128.jpg?width=300"
                                                    alt="프리미엄 헤어클리닉 헤어팩 258ml" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/682059?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">프리미엄 헤어클리닉 헤어팩 258ml</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">12,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide09"
                                role="group" aria-roledescription="slide" aria-label="9 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2598134?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202404/11ef013b5a95a7ad88b1a5d512b6a159.jpg?width=300"
                                                    alt="프로틴 데미지 케어 샴푸 500ml + 트리트먼트 250ml 세트 [향기선택]" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2598134?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">프로틴 데미지 케어 샴푸 500ml + 트리트먼트 250ml
                                                        세트 [향기선택]</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">32,400원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide10"
                                role="group" aria-roledescription="slide" aria-label="10 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/744601?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/06/23/5c0b8e1dfe334dee8082b76deab60b13_20220623100417.jpg?width=300"
                                                    alt="딥 클린 탄력 항균 이중미세모 칫솔 16개입 세트" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/744601?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">딥 클린 탄력 항균 이중미세모 칫솔 16개입 세트</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">23,500원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide11"
                                role="group" aria-roledescription="slide" aria-label="11 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/635083?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/12/30/2eb51f16dfee4a51b0c45e97a967b592_20221230110856.jpg?width=300"
                                                    alt="퓨어 바디워시 500ml (향기선택)" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/635083?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">퓨어 바디워시 500ml (향기선택)</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">11,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide12"
                                role="group" aria-roledescription="slide" aria-label="12 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/1612335?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/06/23/5341031d2db8485c9016ad29dc938659_20220623173646.jpg?width=300"
                                                    alt="퍼퓸 룸 앤 패브릭 섬유탈취제 300ml 2구 세트 (향기선택)" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/1612335?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">퍼퓸 룸 앤 패브릭 섬유탈취제 300ml 2구 세트
                                                        (향기선택)</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">17,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide13"
                                role="group" aria-roledescription="slide" aria-label="13 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2168722?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202401/11eeb37d08d5632591eb0da1233a4432.jpg?width=300"
                                                    alt="프로틴 데미지 케어 노워시 트리트먼트 130ml [향기선택]" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2168722?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">프로틴 데미지 케어 노워시 트리트먼트 130ml [향기선택]
                                                    </h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">16,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide14"
                                role="group" aria-roledescription="slide" aria-label="14 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2598182?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202404/11eefd25c51419af88b183cc33eb8827.jpg?width=300"
                                                    alt="프로틴 데미지 케어 헤어 미스트 세럼 150ml [바이올렛뮤게]" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2598182?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">프로틴 데미지 케어 헤어 미스트 세럼 150ml
                                                        [바이올렛뮤게]</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">16,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide15"
                                role="group" aria-roledescription="slide" aria-label="15 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/715270?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/09/07/d33fa128966642c9b99816ba0fb3544b_20220907172425.jpg?width=300"
                                                    alt="릴랙싱 슬립 배럴 아로마 필로우 미스트 150ml" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/715270?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">릴랙싱 슬립 배럴 아로마 필로우 미스트 150ml</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">14,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide16"
                                role="group" aria-roledescription="slide" aria-label="16 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/782847?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/06/23/ede808645f04499b9700247135c0f459_20220623104502.jpg?width=300"
                                                    alt="퍼퓸 차량용 디퓨저 75ml 2구 세트" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/782847?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">퍼퓸 차량용 디퓨저 75ml 2구 세트</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">14,500원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide17"
                                role="group" aria-roledescription="slide" aria-label="17 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/635085?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202401/11eebb689c2cd2e283775f91e945b902.jpg?width=300"
                                                    alt="쿤달 모이스처 바디로션 500ml (향기선택)" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/635085?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">쿤달 모이스처 바디로션 500ml (향기선택)</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">12,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide18"
                                role="group" aria-roledescription="slide" aria-label="18 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/682087?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/06/23/4dc9ea6dafe144b28617b1aaa1ea8208_20220623101655.jpg?width=300"
                                                    alt="클린 앤 퓨어 핸드워시 258ml 2구 세트" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/682087?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">클린 앤 퓨어 핸드워시 258ml 2구 세트</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">11,900원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide19"
                                role="group" aria-roledescription="slide" aria-label="19 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/635447?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/06/23/6adb28fefaf0479db756640e4479c775_20220623131640.jpg?width=300"
                                                    alt="퓨어 앤 세이프 쿨링 남성청결제 300ml" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/635447?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">퓨어 앤 세이프 쿨링 남성청결제 300ml</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">11,500원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide02-slide20"
                                role="group" aria-roledescription="slide" aria-label="20 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/635179?source=item_detail&amp;source_type=same_brand"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/06/23/ab32a15df09d455081b23baf0ee54950_20220623131211.jpg?width=300"
                                                    alt="울트라 헤어세럼 100ml" loading="lazy" class="css-aaltuk e30ofrd8">
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><a class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/635179?source=item_detail&amp;source_type=same_brand"
                                                    tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">울트라 헤어세럼 100ml</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">11,500원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M9.83 2.453a4.109 4.109 0 0 1 5.81 5.811l-2.49 2.49L9 14.904l-4.15-4.15-2.49-2.49-.156-.164a4.109 4.109 0 1 1 6.797-4.453c.196-.432.473-.838.83-1.194z"
                                                        fill="#ffffff" fill-rule="evenodd" stroke="#a0a0a0"></path>
                                                </svg><span class="css-17mseqq e30ofrd18">찜하기</span></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="splide__arrows css-13o7eu2 e16hmft40 splide__arrows--ltr"><button
                            class="splide__arrows splide__arrow--prev e16hmft42 css-12c5844 e12h9sp60" type="button"
                            disabled="" aria-label="Previous slide" aria-controls="splide02-track"><svg
                                class="e16hmft45 css-19ilmue e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 42 80">
                                <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#303033"
                                    stroke-width="3"></path>
                            </svg></button><button
                            class="splide__arrows splide__arrow--next e16hmft43 css-l0saa e12h9sp60" type="button"
                            aria-label="Next slide" aria-controls="splide02-track"><svg
                                class="e16hmft44 css-fc0kkr e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 42 80">
                                <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#303033"
                                    stroke-width="3"></path>
                            </svg></button></div>
                    <div class="css-egfzt5 e14m9clw2"><span class="css-119htks e14m9clw3">1</span>/<span
                            class="pagination-total css-1sugwtq e14m9clw4">4</span></div>
                </div>
            </div>
        </div>
        <section class="e5a7l9l6 css-1w043rb egmjvu30">
            <div class="css-rpfdd0 egmjvu31">
                <div class="css-70qvj9 egmjvu34">
                    <h2 class="css-rrzi56 egmjvu32">리뷰 <span class="css-1f0l480 egmjvu33">(966)</span></h2>
                    <div class="css-18biwo e1piy9l40"><i class="css-9nop8 e1piy9l41"><svg xmlns="http://www.w3.org/2000/svg"
                                width="14.4" height="14.4" viewBox="0 0 13 12">
                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                </path>
                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg" width="14.4"
                                    height="14.4" viewBox="0 0 13 12">
                                    <path fill="#ff4800" fill-rule="evenodd" stroke="#ff4800" stroke-width="0.7"
                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                    </path>
                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg xmlns="http://www.w3.org/2000/svg"
                                width="14.4" height="14.4" viewBox="0 0 13 12">
                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                </path>
                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg" width="14.4"
                                    height="14.4" viewBox="0 0 13 12">
                                    <path fill="#ff4800" fill-rule="evenodd" stroke="#ff4800" stroke-width="0.7"
                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                    </path>
                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg xmlns="http://www.w3.org/2000/svg"
                                width="14.4" height="14.4" viewBox="0 0 13 12">
                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                </path>
                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg" width="14.4"
                                    height="14.4" viewBox="0 0 13 12">
                                    <path fill="#ff4800" fill-rule="evenodd" stroke="#ff4800" stroke-width="0.7"
                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                    </path>
                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg xmlns="http://www.w3.org/2000/svg"
                                width="14.4" height="14.4" viewBox="0 0 13 12">
                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                </path>
                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg" width="14.4"
                                    height="14.4" viewBox="0 0 13 12">
                                    <path fill="#ff4800" fill-rule="evenodd" stroke="#ff4800" stroke-width="0.7"
                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                    </path>
                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg xmlns="http://www.w3.org/2000/svg"
                                width="14.4" height="14.4" viewBox="0 0 13 12">
                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                </path>
                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg" width="14.4"
                                    height="14.4" viewBox="0 0 13 12">
                                    <path fill="#ff4800" fill-rule="evenodd" stroke="#ff4800" stroke-width="0.7"
                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                    </path>
                                </svg></i></i></div>
                </div>
            </div>
            <div class="css-12192rx e1l0bx3l0">
                <div class="css-ruapjk ef5b6hc0">
                    <div class="splide splide--slide splide--ltr splide--draggable is-active is-initialized" id="splide06"
                        role="region" aria-roledescription="carousel">
                        <div class="splide__track splide__track--slide splide__track--ltr splide__track--draggable"
                            id="splide06-track" aria-live="polite" aria-relevant="additions"
                            style="padding-left: 40px; padding-right: 40px;">
                            <ul class="splide__list" id="splide06-list" role="presentation" style="transform: translateX(0px);">
                                <li class="splide__slide css-y4wdi3 ef5b6hc10 is-active is-visible" id="splide06-slide01"
                                    role="group" aria-roledescription="slide" aria-label="1 of 31"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/05/08/ce813796ae2f409bacf9363a01a4914d_20240508211134.jpeg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10 is-visible is-next" id="splide06-slide02"
                                    role="group" aria-roledescription="slide" aria-label="2 of 31"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/05/06/37f38c0d8c484114821f6b077eb26de2_20240506185513.jpeg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10 is-visible" id="splide06-slide03" role="group"
                                    aria-roledescription="slide" aria-label="3 of 31"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/05/06/f5c6a1b5b1e44da3ab8b831e46227b8d_20240506095317.jpeg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10 is-visible" id="splide06-slide04" role="group"
                                    aria-roledescription="slide" aria-label="4 of 31"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/04/28/c215b4a888a44335b1758202b8b43df1_20240428234824.jpeg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10 is-visible" id="splide06-slide05" role="group"
                                    aria-roledescription="slide" aria-label="5 of 31"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/04/14/c62fa56e532f436c8977795ba8a9eab2_20240414124026.jpg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10 is-visible" id="splide06-slide06" role="group"
                                    aria-roledescription="slide" aria-label="6 of 31"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/04/12/79e5b664a6254a97a87955d679f36992_20240412133912.jpeg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10 is-visible" id="splide06-slide07" role="group"
                                    aria-roledescription="slide" aria-label="7 of 31"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/04/11/4b1567d0266e47de97cd4c2627cb2bb4_20240411062452.jpg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10" id="splide06-slide08" role="group"
                                    aria-roledescription="slide" aria-label="8 of 31" aria-hidden="true"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/04/11/d58ea716d1fe4dffa4eb31c264c9a26f_20240411062458.jpg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                <li class="splide__slide css-y4wdi3 ef5b6hc10" id="splide06-slide09" role="group"
                                    aria-roledescription="slide" aria-label="9 of 31" aria-hidden="true"
                                    style="margin-right: 10px; width: 120px; height: 120px;">
                                    <div class="css-uwwqev ef5b6hc1">
                                        <div class="css-rxshk0 ef5b6hc2"><img
                                                src="https://img.29cm.co.kr/next-product/2024/04/10/d3a4564d7e9a41d2a8807c70ad5e91b8_20240410214130.jpg?width=120"
                                                alt="" class="css-n8h1i5 ef5b6hc3"></div>
                                    </div>
                                </li>
                                
                            </ul>
                        </div>
                        <div class="splide__arrows css-13o7eu2 ef5b6hc4 splide__arrows--ltr"><button
                                class="splide__arrows splide__arrow--prev ef5b6hc7 css-1yhj7r7 e12h9sp60" type="button"
                                disabled="" aria-label="Previous slide" aria-controls="splide06-track"><svg
                                    class="ef5b6hc9 css-1ysd006 e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 42 80">
                                    <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#000000"
                                        stroke-width="5"></path>
                                </svg></button><button class="splide__arrows splide__arrow--next ef5b6hc6 css-1lxndzo e12h9sp60"
                                type="button" aria-label="Next slide" aria-controls="splide06-track"><svg
                                    class="ef5b6hc8 css-1bmm1n2 e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 42 80">
                                    <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#000000"
                                        stroke-width="5"></path>
                                </svg></button></div>
                    </div>
                </div>
            </div>
            <div class="css-0 e13i1jpn0">
                <ul class="css-0 e13i1jpn1">
                    <li class="css-0 e13i1jpn2">
                        <div class="css-100fusk e1eysicp2">
                            <hr class="css-tshtjw e1eysicp22">
                            <div class="css-4g6ai3 e1eysicp3">
                                <div class="css-69znzl e1eysicp4">
                                    <div class="css-18biwo e1piy9l40"><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i></div><span class="css-5030pi e1eysicp5">dia******</span><span
                                        class="css-1riowxi e1eysicp6">2024.05.06</span>
                                </div>
                                <div class="css-16tn2ye e1eysicp7">
                                    <div class="css-31l7gp e1eysicp1">
                                        <div class="css-4oetsc e1eysicp9">
                                            <div class="css-nn803e ee2s9060"><span class="css-rlwyr0 ee2s9061">옵션 : </span><span
                                                    class="css-wle0cx ee2s9062">[향기]코튼온 / Cotton On</span></div>
                                        </div>
                                        <p class="css-1gk1nxz e1eysicp8">남자친구한테 선물해줬어요
                                            남자친구가 넘 마음에 든다면서, 돌 아깝다고 반만 채웠다고 해서 사진 상으론 돌이 적어보이는 거 참고해주세요.
                                            무튼 투룸인데 집에 들어가면 요 향이 은은하게 차있어요
                                            제가 향에 민감한데, 이건 머리 아픈 향이 아니라 아주 좋드라구요! 인테리어 효과도 있구요, 선물하기에도 좋은 패키징이라 아주아주 마음에 들었어요!
                                            제발 시트러스나 라임계열의 향도 만들어주세요.</p>
                                    </div>
                                    <div class="css-1jjxju6 e1eysicp0"><img
                                            src="https://img.29cm.co.kr/next-product/2024/05/06/37f38c0d8c484114821f6b077eb26de2_20240506185513.jpeg?width=120"
                                            loading="lazy" alt="리뷰 이미지" class="css-18bdumj e1eysicp15"></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    
                    <li class="css-0 e13i1jpn2">
                        <div class="css-100fusk e1eysicp2">
                            <hr class="css-tshtjw e1eysicp22">
                            <div class="css-4g6ai3 e1eysicp3">
                                <div class="css-69znzl e1eysicp4">
                                    <div class="css-18biwo e1piy9l40"><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i></div><span class="css-5030pi e1eysicp5">da0***</span><span
                                        class="css-1riowxi e1eysicp6">2024.05.02</span>
                                </div>
                                <div class="css-16tn2ye e1eysicp7">
                                    <div class="css-31l7gp e1eysicp1">
                                        <div class="css-4oetsc e1eysicp9">
                                            <div class="css-nn803e ee2s9060"><span class="css-rlwyr0 ee2s9061">옵션 : </span><span
                                                    class="css-wle0cx ee2s9062">[향기]코튼온 / Cotton On</span></div>
                                        </div>
                                        <p class="css-1gk1nxz e1eysicp8">선물했는데 받는 사람도 너무 만족해했습니다</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="css-0 e13i1jpn2">
                        <div class="css-100fusk e1eysicp2">
                            <hr class="css-tshtjw e1eysicp22">
                            <div class="css-4g6ai3 e1eysicp3">
                                <div class="css-69znzl e1eysicp4">
                                    <div class="css-18biwo e1piy9l40"><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i></div><span class="css-5030pi e1eysicp5">ili*******</span><span
                                        class="css-1riowxi e1eysicp6">2024.04.29</span>
                                </div>
                                <div class="css-16tn2ye e1eysicp7">
                                    <div class="css-31l7gp e1eysicp1">
                                        <div class="css-175ywfd e1eysicp11"><span class="css-imikhc e1eysicp12">선물리뷰</span>
                                        </div>
                                        <div class="css-4oetsc e1eysicp9">
                                            <div class="css-nn803e ee2s9060"><span class="css-rlwyr0 ee2s9061">옵션 : </span><span
                                                    class="css-wle0cx ee2s9062">[향기]오리엔탈패츌리 / Oriental Patcholli</span></div>
                                        </div>
                                        <p class="css-1gk1nxz e1eysicp8">친구에게 선물 했는데 너무 마음에 든다고 하더라고요. 깔끔해서 좋대요. 저도 선물로 주고 뿌듯
                                            했어요. </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="css-0 e13i1jpn2">
                        <div class="css-100fusk e1eysicp2">
                            <hr class="css-tshtjw e1eysicp22">
                            <div class="css-4g6ai3 e1eysicp3">
                                <div class="css-69znzl e1eysicp4">
                                    <div class="css-18biwo e1piy9l40"><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i></div><span class="css-5030pi e1eysicp5">inc*****</span><span
                                        class="css-1riowxi e1eysicp6">2024.04.28</span>
                                </div>
                                <div class="css-16tn2ye e1eysicp7">
                                    <div class="css-31l7gp e1eysicp1">
                                        <div class="css-4oetsc e1eysicp9">
                                            <div class="css-nn803e ee2s9060"><span class="css-rlwyr0 ee2s9061">옵션 : </span><span
                                                    class="css-wle0cx ee2s9062">[향기]그라시플라워 / Grassy Flower</span></div>
                                        </div>
                                        <p class="css-1gk1nxz e1eysicp8">지인 집들이 선물로 딱인거 같아요!!! 향 호불호로 선택하기가 쉽진않았지만 집들이 선물로는 정말
                                            최고인듯</p>
                                    </div>
                                    <div class="css-1jjxju6 e1eysicp0"><img
                                            src="https://img.29cm.co.kr/next-product/2024/04/28/c215b4a888a44335b1758202b8b43df1_20240428234824.jpeg?width=120"
                                            loading="lazy" alt="리뷰 이미지" class="css-18bdumj e1eysicp15"></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="css-0 e13i1jpn2">
                        <div class="css-100fusk e1eysicp2">
                            <hr class="css-tshtjw e1eysicp22">
                            <div class="css-4g6ai3 e1eysicp3">
                                <div class="css-69znzl e1eysicp4">
                                    <div class="css-18biwo e1piy9l40"><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i><i class="css-9nop8 e1piy9l41"><svg
                                                xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 13 12">
                                                <path fill="#d4d4d4" fill-rule="evenodd" stroke="#d4d4d4" stroke-width="0.7"
                                                    d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                </path>
                                            </svg><i class="css-neyd9i e1piy9l42"><svg xmlns="http://www.w3.org/2000/svg"
                                                    width="10" height="10" viewBox="0 0 13 12">
                                                    <path fill="#000000" fill-rule="evenodd" stroke="#000000" stroke-width="0.7"
                                                        d="M4.146 3.95L0 4.583l3 3.075L2.292 12 6 9.95 9.708 12 9 7.658l3-3.075-4.146-.633L6 0z">
                                                    </path>
                                                </svg></i></i></div><span class="css-5030pi e1eysicp5">sej*******</span><span
                                        class="css-1riowxi e1eysicp6">2024.04.28</span>
                                </div>
                                <div class="css-16tn2ye e1eysicp7">
                                    <div class="css-31l7gp e1eysicp1">
                                        <div class="css-4oetsc e1eysicp9">
                                            <div class="css-nn803e ee2s9060"><span class="css-rlwyr0 ee2s9061">옵션 : </span><span
                                                    class="css-wle0cx ee2s9062">[향기]오리엔탈패츌리 / Oriental Patcholli</span></div>
                                        </div>
                                        <p class="css-1gk1nxz e1eysicp8">예뻐서 그냥 놔도 좋네요 오일 떨어트리면 향이 은은하게 번져서 너무 좋아요</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="e13i1jpn4 css-1oq0g9s ej7aofc0">
                    <button type="button" class="css-129gw94 ej7aofc3"><svg class="ej7aofc5 css-11r31mh e1xecdd00"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
                        <path d="M41 80L1 39.917 40.834 0" fill="none" fill-rule="evenodd" stroke="#979797" stroke-width="3"></path>
                    </svg><span class="css-17mseqq ej7aofc7">이전 페이지</span></button>
                    <ul class="css-16vmvyd ej7aofc1">
                        <li aria-current="true" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-1xzw0uc ej7aofc4">1</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">2</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">3</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">4</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">5</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">6</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">7</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">8</button></li>
                        <li class="css-12l5i6f ej7aofc2">...</li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">49</button></li>
                    </ul><button type="button" aria-disabled="false" class="css-129gw94 ej7aofc3"><svg
                            class="ej7aofc6 css-ar1b2l e1mnekl40" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
                            <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#979797" stroke-width="3">
                            </path>
                        </svg><span class="css-17mseqq ej7aofc7">다음 페이지</span></button>
                </div>
            </div>
        </section>
        <section class="e5a7l9l7 css-f18qjw e1l19miw0">
            <div class="css-3sj7fp e1l19miw2">
                <div class="css-190b6wm e1l19miw4">
                    <h2 class="css-1byql8u e1l19miw3">상품 Q&amp;A </h2>
                </div>
                <div class="css-k008qs e1l19miw5">
                    <ul class="css-k008qs e3v3rp20">
                        <li class="css-1bpzozu e3v3rp21"><button type="button" class="css-13veewm e3v3rp22">ALL</button>
                        </li>
                        <li class="css-1bpzozu e3v3rp21"><button type="button" class="css-7mk7dj e3v3rp22">상품문의
                            </button></li>
                        <li class="css-1bpzozu e3v3rp21"><button type="button" class="css-7mk7dj e3v3rp22">재입고문의
                            </button></li>
                        <li class="css-1bpzozu e3v3rp21"><button type="button" class="css-7mk7dj e3v3rp22">사이즈문의
                            </button></li>
                        <li class="css-1bpzozu e3v3rp21"><button type="button" class="css-7mk7dj e3v3rp22">배송문의
                            </button></li>
                        <li class="css-1bpzozu e3v3rp21"><button type="button" class="css-7mk7dj e3v3rp22">기타 </button>
                        </li>
                    </ul><button class="e1l19miw6 css-v3245 e12h9sp60" type="button">Q&amp;A쓰기</button>
                </div>
            </div>
            <div class="css-0 e96wgze0">
                <ul class="css-0 e96wgze1" id="product_qna">
                    <li class="css-0 e96wgze2">
                        <div class="css-18f9y8v e153tspa0">
                            <div role="button" class="css-1a2sitv e153tspa1">
                                <div class="css-31l7gp e153tspa3"><span class="css-ef2jzh e153tspa5">[배송문의]</span>
                                    <h3 class="css-1wmvtpx e153tspa6">비밀글입니다.</h3>
                                </div>
                                <div class="css-aaq76s e153tspa4">
                                    <div class="css-1xdq1r6 e153tspa8"><span
                                            class="css-8uhtka e153tspa11">coolmint8***</span></div>
                                    <div class="css-8cxk5l e153tspa9">2024.03.05</div>
                                    <div class="css-q5n7xs e153tspa10"><span class="css-xkg75d e153tspa12">yes</span>
                                    </div>
                                </div>
                            </div>
                            <hr class="css-1kw6o0w e153tspa2">
                        </div>
                    </li>
                    <li class="css-0 e96wgze2">
                        <div class="css-18f9y8v e153tspa0">
                            <div role="button" class="css-1a2sitv e153tspa1">
                                <div class="css-31l7gp e153tspa3"><span class="css-ef2jzh e153tspa5">[재입고문의]</span>
                                    <h3 class="css-f5ijgx e153tspa6">그라시플라워는 언제 입고되나요?</h3>
                                </div>
                                <div class="css-aaq76s e153tspa4">
                                    <div class="css-1xdq1r6 e153tspa8"><span
                                            class="css-8uhtka e153tspa11">zzzzzl***</span></div>
                                    <div class="css-8cxk5l e153tspa9">2024.02.16</div>
                                    <div class="css-q5n7xs e153tspa10"><span class="css-xkg75d e153tspa12">yes</span>
                                    </div>
                                </div>
                            </div>
                            <hr class="css-1kw6o0w e153tspa2">
                        </div>
                    </li>
                    <li class="css-0 e96wgze2">
                        <div class="css-18f9y8v e153tspa0">
                            <div role="button" class="css-1a2sitv e153tspa1">
                                <div class="css-31l7gp e153tspa3"><span class="css-ef2jzh e153tspa5">[상품문의]</span>
                                    <h3 class="css-f5ijgx e153tspa6">고양이한테해로운 오일이있을까요?</h3>
                                </div>
                                <div class="css-aaq76s e153tspa4">
                                    <div class="css-1xdq1r6 e153tspa8"><span
                                            class="css-8uhtka e153tspa11">jiji***</span></div>
                                    <div class="css-8cxk5l e153tspa9">2023.12.06</div>
                                    <div class="css-q5n7xs e153tspa10"><span class="css-xkg75d e153tspa12">yes</span>
                                    </div>
                                </div>
                            </div>
                            <hr class="css-1kw6o0w e153tspa2">
                        </div>
                    </li>
                    <li class="css-0 e96wgze2">
                        <div class="css-18f9y8v e153tspa0">
                            <div role="button" class="css-1a2sitv e153tspa1">
                                <div class="css-31l7gp e153tspa3"><span class="css-ef2jzh e153tspa5">[상품문의]</span>
                                    <h3 class="css-1wmvtpx e153tspa6">비밀글입니다.</h3>
                                </div>
                                <div class="css-aaq76s e153tspa4">
                                    <div class="css-1xdq1r6 e153tspa8"><span
                                            class="css-8uhtka e153tspa11">ahns***</span></div>
                                    <div class="css-8cxk5l e153tspa9">2023.11.17</div>
                                    <div class="css-q5n7xs e153tspa10"><span class="css-xkg75d e153tspa12">yes</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="e96wgze4 css-1oq0g9s ej7aofc0">
                    <ul class="css-16vmvyd ej7aofc1">
                        <li aria-current="true" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-1xzw0uc ej7aofc4">1</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">2</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">3</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">4</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">5</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">6</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">7</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">8</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">9</button></li>
                        <li aria-current="false" class="css-12l5i6f ej7aofc2"><button type="button"
                                class="css-opb0qt ej7aofc4">10</button></li>
                    </ul><button type="button" aria-disabled="false" class="css-129gw94 ej7aofc3"><svg
                            class="ej7aofc6 css-ar1b2l e1mnekl40" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 42 80">
                            <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#979797"
                                stroke-width="3"></path>
                        </svg><span class="css-17mseqq ej7aofc7">다음 페이지</span></button>
                </div>
            </div>
        </section>
        <section class="e5a7l9l9 css-1axy229 e1esrzdi0">
            <div class="css-1j59ktc e1esrzdi1">
                <h2 class="css-d15rx0 e11c9teh0">배송정보</h2>
                <ul class="css-2bwj7u e11c9teh1">
                    <li class="css-1lu4an7 e11c9teh2">Delivery 브랜드 업체발송은 상품설명에 별도로 기입된 브랜드 알림 배송공지 기준으로 출고되고 브랜드마다 개별
                        배송비가 부여됩니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">Delivery 29CM 자체발송은 오후 2시까지 결제확인된 주문은 당일 출고되고 5만원 이상 주문은 무료배송, 5만원
                        미만은 3,000원의 배송비가 추가됩니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">SPECIAL ORDER, PT 등 예약주문은 상세설명의 출고일정을 확인하시기 바랍니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">구두, 액세서리, 침구, 액자, 가구 등 상품설명의 제작기간을 숙지해주시기 바랍니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">가구 및 일부 상품, 제주도를 포함한 도서산간 지역은 추가배송비 입금요청이 있을 수 있습니다.</li>
                </ul>
            </div>
            <div class="css-1j59ktc e1esrzdi1">
                <h2 class="css-d15rx0 e11c9teh0">교환, 환불, A/S 안내</h2>
                <ul class="css-2bwj7u e11c9teh1">
                    <li class="css-1lu4an7 e11c9teh2">상품 수령일로부터 7일 이내 반품 / 환불 가능합니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">변심 반품의 경우 왕복배송비를 차감한 금액이 환불되며, 제품 및 포장 상태가 재판매 가능하여야 합니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">동일상품 또는 동일상품 내 추가금액이 없는 옵션만 교환가능합니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">상품 불량인 경우는 배송비를 포함한 전액이 환불됩니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">출고 이후 환불요청 시 상품 회수 후 처리됩니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">얼리 등 주문제작상품 / 카메라 / 밀봉포장상품 등은 변심에 따른 반품 / 환불이 불가합니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">일부 완제품으로 수입된 상품의 경우 A/S가 불가합니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">특정브랜드의 상품설명에 별도로 기입된 교환 / 환불 / AS 기준이 우선합니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">구매자가 미성년자인 경우에는 상품 구입 시 법정대리인이 동의하지 아니하면 미성년자 본인 또는 법정대리인이 구매취소 할
                        수 있습니다.</li>
                    <li class="css-1lu4an7 e11c9teh2">상품의 색상과 이미지는 기기의 해상도에 따라 다르게 보일 수 있습니다.</li>
                </ul>
            </div>
        </section>
        <div class="e5a7l9l12 css-1sqa5e1 e6czej60">
            <div></div>
            <h2 class="css-119szb1 e6czej61">디퓨저 BEST</h2>
            <div class="css-gszwq7 e15h26v80"><span class="e15h26v81 css-16szog4 e1r8czm20"><input
                        class="css-wm7oed e1r8czm22" type="radio" name="periodNOW" value="NOW" checked=""><label
                        class="css-yxewik e1r8czm21" for="periodNOW" title="period">실시간</label></span><span
                    class="e15h26v81 css-16szog4 e1r8czm20"><input class="css-wm7oed e1r8czm22" type="radio"
                        name="periodONE_DAY" value="ONE_DAY"><label class="css-yxewik e1r8czm21" for="periodONE_DAY"
                        title="period">일간</label></span><span class="e15h26v81 css-16szog4 e1r8czm20"><input
                        class="css-wm7oed e1r8czm22" type="radio" name="periodONE_WEEK" value="ONE_WEEK"><label
                        class="css-yxewik e1r8czm21" for="periodONE_WEEK" title="period">주간</label></span><span
                    class="e15h26v81 css-16szog4 e1r8czm20"><input class="css-wm7oed e1r8czm22" type="radio"
                        name="periodONE_MONTH" value="ONE_MONTH"><label class="css-yxewik e1r8czm21"
                        for="periodONE_MONTH" title="period">월간</label></span></div>
            <div class="css-1m4f0m e14m9clw0">
                <div class="splide slide splide--slide splide--ltr splide--draggable is-active is-initialized"
                    id="splide05" role="region" aria-roledescription="carousel">
                    <div class="splide__track splide__track--slide splide__track--ltr splide__track--draggable"
                        id="splide05-track" aria-live="polite" aria-relevant="additions"
                        style="padding-left: 0px; padding-right: 0px;">
                        <ul class="splide__list" id="splide05-list" role="presentation"
                            style="transform: translateX(0px);">
                            <li class="splide__slide css-mmkycr e14m9clw1 is-active is-visible" gap="18" width="20%"
                                id="splide05-slide01" role="group" aria-roledescription="slide" aria-label="1 of 50">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/2489762?source=item_detail&amp;source_type=category_best">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202403/11eee1a4cc1e2e6a91a56150e5f9a465.jpg?width=300"
                                                    alt="29edition 머들디퓨저 200ml" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                            <div class="css-xfiaz9 e30ofrd2">
                                                <div class="css-s7yxw7 e30ofrd3"></div><span
                                                    class="css-1atqnkr e30ofrd4">1</span>
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span
                                                    class="css-1ocrzm4 e30ofrd9">이구에디션</span><a
                                                    class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/2489762?source=item_detail&amp;source_type=category_best">
                                                    <h4 class="css-1bz3l1k e30ofrd11">29edition 머들디퓨저 200ml</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">49,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">5%</span><span
                                                            class="css-842lcu e30ofrd15">46,550원</span>
                                                    </div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"><svg width="18" height="16" viewBox="0 0 18 16"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    
                                                </svg></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible is-next" gap="18" width="20%"
                                id="splide05-slide02" role="group" aria-roledescription="slide" aria-label="2 of 50">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/1967525?source=item_detail&amp;source_type=category_best">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2023/03/15/81919ebac7cf4558933f3b643f508784_20230315113932.gif?width=300"
                                                    alt="오센트 마블 차량용방향제" loading="lazy" class="css-aaltuk e30ofrd8">
                                            </div>
                                            <div class="css-xfiaz9 e30ofrd2">
                                                <div class="css-s7yxw7 e30ofrd3"></div><span
                                                    class="css-1atqnkr e30ofrd4">2</span>
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span
                                                    class="css-1ocrzm4 e30ofrd9">오센트</span><a
                                                    class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/1967525?source=item_detail&amp;source_type=category_best">
                                                    <h4 class="css-1bz3l1k e30ofrd11">오센트 마블 차량용방향제</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">28,000원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%"
                                id="splide05-slide03" role="group" aria-roledescription="slide" aria-label="3 of 50">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/1162174?source=item_detail&amp;source_type=category_best">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2021/07/15/b3baa89dcf7f45d59e8fa4f5bcc560c7_20210715151829.jpg?width=300"
                                                    alt="[스트레스해소/무드등] 천연 아로마테라피 우드 감성 인테리어 캔들 기프트세트 집들이선물"
                                                    loading="lazy" class="css-aaltuk e30ofrd8"></div>
                                            <div class="css-xfiaz9 e30ofrd2">
                                                <div class="css-s7yxw7 e30ofrd3"></div><span
                                                    class="css-1atqnkr e30ofrd4">3</span>
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span
                                                    class="css-1ocrzm4 e30ofrd9">미세스콜드</span><a
                                                    class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/1162174?source=item_detail&amp;source_type=category_best">
                                                    <h4 class="css-1bz3l1k e30ofrd11">[스트레스해소/무드등] 천연 아로마테라피 우드 감성 인테리어
                                                        캔들 기프트세트 집들이선물</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">39,900원</div><span
                                                            class="css-p7mzyt e30ofrd14">10%</span><span
                                                            class="css-842lcu e30ofrd15">35,900원</span>
                                                    </div>
                                                    <div><span class="css-zalwcv e30ofrd19">무료배송</span></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%"
                                id="splide05-slide04" role="group" aria-roledescription="slide" aria-label="4 of 50">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5"
                                            href="/catalog/550519?source=item_detail&amp;source_type=category_best">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2020/01/06/83098ec68f6e486b8da281f770b5ba59_20200106150933.jpg?width=300"
                                                    alt="닥스훈트 석고방향제 (+선물상자)" loading="lazy" class="css-aaltuk e30ofrd8">
                                            </div>
                                            <div class="css-xfiaz9 e30ofrd2">
                                                <div class="css-s7yxw7 e30ofrd3"></div><span
                                                    class="css-1atqnkr e30ofrd4">4</span>
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span
                                                    class="css-1ocrzm4 e30ofrd9">커밍캔들</span><a
                                                    class="css-18mjw15 e30ofrd10"
                                                    href="/catalog/550519?source=item_detail&amp;source_type=category_best">
                                                    <h4 class="css-1bz3l1k e30ofrd11">닥스훈트 석고방향제 (+선물상자)</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">14,000원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60"
                                                type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="splide__arrows css-13o7eu2 e16hmft40 splide__arrows--ltr"><button
                            class="splide__arrows splide__arrow--prev e16hmft42 css-12c5844 e12h9sp60" type="button"
                            disabled="" aria-label="Previous slide" aria-controls="splide05-track"><svg
                                class="e16hmft45 css-19ilmue e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 42 80">
                                <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#303033"
                                    stroke-width="3"></path>
                            </svg></button><button
                            class="splide__arrows splide__arrow--next e16hmft43 css-l0saa e12h9sp60" type="button"
                            aria-label="Next slide" aria-controls="splide05-track"><svg
                                class="e16hmft44 css-fc0kkr e15lsifv0" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 42 80">
                                <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#303033"
                                    stroke-width="3"></path>
                            </svg></button></div>
                    <div class="css-egfzt5 e14m9clw2"><span class="css-119htks e14m9clw3">1</span>/<span
                            class="pagination-total css-1sugwtq e14m9clw4">10</span></div>
                </div>
            </div>
        </div>
        <div class="e5a7l9l13 css-1jik08a e9uf5o90">
            <div></div>
            <h2 class="css-1u3uss1 e9uf5o91">다른 고객이 함께 구매한 상품</h2>
            <div class="css-1m4f0m e14m9clw0">
                <div class="splide slide splide--slide splide--ltr splide--draggable is-active is-initialized" id="splide07"
                    role="region" aria-roledescription="carousel">
                    <div class="splide__track splide__track--slide splide__track--ltr splide__track--draggable"
                        id="splide07-track" aria-live="polite" aria-relevant="additions"
                        style="padding-left: 0px; padding-right: 0px;">
                        <ul class="splide__list" id="splide07-list" role="presentation" style="transform: translateX(0px);">
                            <li class="splide__slide css-mmkycr e14m9clw1 is-active is-visible" gap="18" width="20%"
                                id="splide07-slide01" role="group" aria-roledescription="slide" aria-label="1 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/2273489">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202312/11ee925aba51f7c5a5b3d9f8f476c5a2.jpg?width=300"
                                                    alt="[감성선물] MARS 마스 스톤 디퓨저 집들이선물 신혼부부 결혼 선물 방향제 디퓨져" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">타이거다즐러</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/2273489">
                                                    <h4 class="css-1bz3l1k e30ofrd11">[감성선물] MARS 마스 스톤 디퓨저 집들이선물 신혼부부 결혼 선물 방향제
                                                        디퓨져</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">99,800원</div><span
                                                            class="css-p7mzyt e30ofrd14">60%</span><span
                                                            class="css-842lcu e30ofrd15">39,900원</span>
                                                    </div>
                                                    <div><span class="css-zalwcv e30ofrd19">무료배송</span></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible is-next" gap="18" width="20%"
                                id="splide07-slide02" role="group" aria-roledescription="slide" aria-label="2 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/1829791">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/11/21/e8208acfb46d45ca8a0d9e2af9b48781_20221121094807.jpg?width=300"
                                                    alt="[숙면을위한선물]딥슬립 오일 스톤 오브제 선물세트" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">레노벨로</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/1829791">
                                                    <h4 class="css-1bz3l1k e30ofrd11">[숙면을위한선물]딥슬립 오일 스톤 오브제 선물세트</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">49,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">12%</span><span
                                                            class="css-842lcu e30ofrd15">43,000원</span>
                                                    </div>
                                                    <div><span class="css-zalwcv e30ofrd19">무료배송</span></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%" id="splide07-slide03"
                                role="group" aria-roledescription="slide" aria-label="3 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/1806283">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/11/02/5b3ae95706a34f4f8219a66b2c5d0af4_20221102092432.jpg?width=300"
                                                    alt="오브제 바이 쿤달 퍼퓸 볼케니크 스톤디퓨저 프래그런스 오일 10ml 2개 구성" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">쿤달</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/1806283">
                                                    <h4 class="css-1bz3l1k e30ofrd11">오브제 바이 쿤달 퍼퓸 볼케니크 스톤디퓨저 프래그런스 오일 10ml 2개
                                                        구성</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">17,000원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%" id="splide07-slide04"
                                role="group" aria-roledescription="slide" aria-label="4 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/2030840">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2023/04/18/7e419d99f9844b328234bcd66cebbab4_20230418103958.png?width=300"
                                                    alt="[리츄얼 선물추천] 마인드풀니스 디퓨징 오일 &amp; 스톤 세트" loading="lazy"
                                                    class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">아로마티카</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/2030840">
                                                    <h4 class="css-1bz3l1k e30ofrd11">[리츄얼 선물추천] 마인드풀니스 디퓨징 오일 &amp; 스톤 세트</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">41,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">20%</span><span
                                                            class="css-842lcu e30ofrd15">32,800원</span>
                                                    </div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1 is-visible" gap="18" width="20%" id="splide07-slide05"
                                role="group" aria-roledescription="slide" aria-label="5 of 20">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/2334134">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202311/11ee8209e169d5a78a7fb3e748d4bc8f.jpg?width=300"
                                                    alt="AM10:00_ 스톤 _ 디퓨저_Black" loading="lazy" class="css-aaltuk e30ofrd8">
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">챠오서울</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/2334134">
                                                    <h4 class="css-1bz3l1k e30ofrd11">AM10:00_ 스톤 _ 디퓨저_Black</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">63,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">5%</span><span
                                                            class="css-842lcu e30ofrd15">59,850원</span>
                                                    </div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide07-slide06"
                                role="group" aria-roledescription="slide" aria-label="6 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/2304068"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202310/11ee73f76dfc1fe983bce3ca92292bbe.jpg?width=300"
                                                    alt="[생일/집들이선물] 아로마 스톤 (오일 미포함)" loading="lazy" class="css-aaltuk e30ofrd8">
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">템플</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/2304068" tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">[생일/집들이선물] 아로마 스톤 (오일 미포함)</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">29,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">7%</span><span
                                                            class="css-842lcu e30ofrd15">27,000원</span>
                                                    </div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide07-slide07"
                                role="group" aria-roledescription="slide" aria-label="7 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/2051219"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/item/202312/11eea52b92263bd391ebdfb801908deb.png?width=300"
                                                    alt="[선물추천 / 29 ONLY] 마인드풀니스 디퓨징 오일 &amp; 향합 세트 +(시너지오일&amp;쇼핑백 증정)"
                                                    loading="lazy" class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">아로마티카</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/2051219" tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">[선물추천 / 29 ONLY] 마인드풀니스 디퓨징 오일 &amp; 향합 세트
                                                        +(시너지오일&amp;쇼핑백 증정)</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">118,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">35%</span><span
                                                            class="css-842lcu e30ofrd15">76,500원</span>
                                                    </div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide07-slide08"
                                role="group" aria-roledescription="slide" aria-label="8 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/1966627"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2023/03/13/bc649392ccdb432991b15cb51fddc7fd_20230313164503.jpg?width=300"
                                                    alt="테일러센츠 x 광주요 매병 디퓨저 단품 선택" loading="lazy" class="css-aaltuk e30ofrd8">
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">테일러센츠</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/1966627" tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">테일러센츠 x 광주요 매병 디퓨저 단품 선택</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">39,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">18%</span><span
                                                            class="css-842lcu e30ofrd15">31,900원</span>
                                                    </div>
                                                    <div><span class="css-zalwcv e30ofrd19">무료배송</span></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide07-slide09"
                                role="group" aria-roledescription="slide" aria-label="9 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/1855659"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2022/12/19/07148cc00f544f759dc4dee79bdd306d_20221219234353.jpg?width=300"
                                                    alt="AM4:00_ 스톤 _ 디퓨저" loading="lazy" class="css-aaltuk e30ofrd8"></div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">챠오서울</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/1855659" tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">AM4:00_ 스톤 _ 디퓨저</h4>
                                                    <div class="css-1hda3uw e30ofrd12">
                                                        <div class="css-1kt1fs e30ofrd13">63,000원</div><span
                                                            class="css-p7mzyt e30ofrd14">5%</span><span
                                                            class="css-842lcu e30ofrd15">59,850원</span>
                                                    </div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="splide__slide css-mmkycr e14m9clw1" gap="18" width="20%" id="splide07-slide12"
                                role="group" aria-roledescription="slide" aria-label="12 of 20" aria-hidden="true">
                                <div class="css-79elbk e30ofrd0">
                                    <div class="css-17d7tlx e30ofrd1"><a class="css-1so5xgc e30ofrd5" href="/catalog/1639996"
                                            tabindex="-1">
                                            <div><img
                                                    src="https://img.29cm.co.kr/next-product/2023/04/07/3017bfb6a6b0421795a36ad6764ff501_20230407135228.jpg?width=300"
                                                    alt="선물세트_슈 센티드 오브제 (석고방향제)" loading="lazy" class="css-aaltuk e30ofrd8">
                                            </div>
                                        </a>
                                        <div class="css-ltqa49 e30ofrd6">
                                            <div class="css-16agjqd e30ofrd7"><span class="css-1ocrzm4 e30ofrd9">플랫포인트</span><a
                                                    class="css-18mjw15 e30ofrd10" href="/catalog/1639996" tabindex="-1">
                                                    <h4 class="css-1bz3l1k e30ofrd11">선물세트_슈 센티드 오브제 (석고방향제)</h4>
                                                    <div class="css-1hda3uw e30ofrd12"><span
                                                            class="css-842lcu e30ofrd15">52,000원</span></div>
                                                    <div></div>
                                                </a></div><button class="e30ofrd16 css-uh8kc9 e12h9sp60" type="button"
                                                tabindex="-1"></button>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="splide__arrows css-13o7eu2 e16hmft40 splide__arrows--ltr"><button
                            class="splide__arrows splide__arrow--prev e16hmft42 css-12c5844 e12h9sp60" type="button" disabled=""
                            aria-label="Previous slide" aria-controls="splide07-track"><svg
                                class="e16hmft45 css-19ilmue e15lsifv0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
                                <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#303033"
                                    stroke-width="3"></path>
                            </svg></button><button class="splide__arrows splide__arrow--next e16hmft43 css-l0saa e12h9sp60"
                            type="button" aria-label="Next slide" aria-controls="splide07-track"><svg
                                class="e16hmft44 css-fc0kkr e15lsifv0" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 42 80">
                                <path d="M1 0l40 40.083L1.166 80" fill="none" fill-rule="evenodd" stroke="#303033"
                                    stroke-width="3"></path>
                            </svg></button></div>
                    <div class="css-egfzt5 e14m9clw2"><span class="css-119htks e14m9clw3">1</span>/<span
                            class="pagination-total css-1sugwtq e14m9clw4">4</span></div>
                </div>
            </div>
        </div>
        <div class="e5a7l9l8 css-uctowo el8az4p0">
            <h2 class="css-zf19lk el8az4p1">관련 이벤트</h2>
            <div class="event-container">
                <div class="event-item">
                    <a href="https://content.29cm.co.kr/post/32855">
                        <div class="event-image image1"></div>
                        <div class="event-details">
                            <h3>[15% 쿠폰] 할인 적용 아이템을 만나요</h3>
                            <p>2024.01.29 ~</p>
                        </div>
                    </a>
                </div>
                <div class="event-item">
                    <a href="https://content.29cm.co.kr/post/24606">
                        <div class="event-image image1"></div>
                        <div class="event-details">
                            <h3>ORANGE 회원님 쿠폰 2장을 선물로 드려요</h3>
                            <p>2023.07.26 ~ </p>
                        </div>
                    </a>
                </div>
                <div class="event-item">
                    <a href="https://content.29cm.co.kr/post/21812">
                        <div class="event-image image1"></div>
                        <div class="event-details">
                            <h3>RED 회원님 쿠폰 2장을 선물로 드려요</h3>
                            <p>2023.07.26 ~ </p>
                        </div>
                    </a>
                </div>
                <div class="event-item">
                    <a href="https://content.29cm.co.kr/post/21806">
                        <div class="event-image image1"></div>
                        <div class="event-details">
                            <h3>VIP 회원님 쿠폰 2장을 선물로 드려요</h3>
                            <p>2023.07.26 ~ </p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="css-1ot2wkc e1uo4o528">
        <section class="css-bzwuri edyywhh0">
            <div class="css-vjlry1 edyywhh1"><button id="cta_heart_button" class="edyywhh2 css-1gp0eze e12h9sp60"
                    type="button"><svg class="css-1ktnz7v edyywhh3" xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 18 18">
                        <path
                            d="M9 6.088C9 3.831 10.791 2 13 2s4 1.83 4 4.088c0 1.743-1.46 3.23-1.46 3.23L9 16 2.46 9.318S1 7.83 1 6.088C1 3.831 2.791 2 5 2s4 1.83 4 4.088z"
                            fill="none" fill-rule="evenodd" stroke="#ffffff" stroke-width="1"></path>
                    </svg><span class="css-17mseqq edyywhh5">찜하기</span></button><button id="cta_shared_button"
                    class="edyywhh2 css-1gp0eze e12h9sp60" type="button"><svg class="css-1ktnz7v edyywhh4"
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 22">
                        <g fill="none" fill-rule="evenodd" stroke="#ffffff" stroke-width="1">
                            <path
                                d="M17.5 15.402a3 3 0 1 1-3 5.196 3 3 0 0 1 3-5.196zM13.578 16.725l-7.179-4.5M6.598 9.5a3 3 0 1 0-5.196 3 3 3 0 0 0 5.196-3zM17.5 6.597A3 3 0 1 0 14.5 1.402 3 3 0 0 0 17.5 6.597zM13 5.5L6.678 9.616">
                            </path>
                        </g>
                    </svg><span class="css-17mseqq edyywhh5">공유하기</span></button></div>
            <div class="css-7boy05 ez83ayv0"></div>
        </section>
    </div>
    <div class="css-1qi5uc2 e1uo4o529">
        <button class="e1uo4o5210 css-wuhjr5 eno1i6l0" type="button"><svg
                class="css-l5at91 eno1i6l1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 22">
                <g fill="none" fill-rule="evenodd" stroke="#ffffff" stroke-width="2">
                    <path
                        d="M17.5 15.402a3 3 0 1 1-3 5.196 3 3 0 0 1 3-5.196zM13.578 16.725l-7.179-4.5M6.598 9.5a3 3 0 1 0-5.196 3 3 3 0 0 0 5.196-3zM17.5 6.597A3 3 0 1 0 14.5 1.402 3 3 0 0 0 17.5 6.597zM13 5.5L6.678 9.616">
                    </path>
                </g>
            </svg>
            <span class="css-17mseqq eno1i6l2">공유하기</span>
        </button>
        <button class="css-3310rc e1l6y7zu0" type="button">TOP</button>
        <button class="css-1r1ons4 e10drivl0" type="button">Bottom</button>
    </div>
    
</body>
<script>
	$(".cartbtn").on("click", function(){
		confirm("장바구니에 추가 하시겠습니까?")
	})
</script>
<footer>
	<jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include>
</footer>
</html>


