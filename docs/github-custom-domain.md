---
layout: default
title: Github 블로그 커스텀 도메인 설정하기
nav_order: 1
---

# Github 블로그 커스텀 도메인 설정하기

{: .no_toc }

## Table of contents

{: .no_toc .text-delta }

1. TOC {:toc}

---



## 도메인을 구매한 곳에서 Github Pages로 연결하기

Github Pages로 커스텀 도메인을 연결하려면, Apex 도메인과 www 도메인에 대해 전부 `A` 레코드 추가가 필요하다.

> * Apex 도메인: `example.com` 과 같이 서브 도메인이 없는 도메인
> * www 도메인: `www.example.com` 과 같이 Apex 도메인 앞에 `www` 가 붙어있는 도메인

Github은 사용자가 apex 도메인을 사용한다 하더라도 www 서브도메인 사용을 권장한다.

When you create a new site with an apex domain, we automatically attempt to secure the `www` subdomain for use when serving your site's content, but you need to make the DNS changes to use the `www` subdomain. If you configure a `www` subdomain, we automatically attempt to secure the associated apex domain. For more information, see "[Managing a custom domain for your GitHub Pages site](https://docs.github.com/en/articles/managing-a-custom-domain-for-your-github-pages-site)."

### `A` 레코드 추가

* Github Pages IP 주소를 추가한다.

  ```shell
  185.199.108.153
  185.199.109.153
  185.199.110.153
  185.199.111.153
  ```

### `CNAME` 추가

Navigate to your DNS provider and create a `CNAME` record that points your subdomain to the default domain for your site. For example, if you want to use the subdomain `www.example.com` for your user site, create a `CNAME` record that points `www.example.com` to `<user>.github.io`. If you want to use the subdomain `another.example.com` for your organization site, create a `CNAME` record that points `another.example.com` to `<organization>.github.io`. The `CNAME` record should always point to `<user>.github.io` or `<organization>.github.io`, excluding the repository name. For more information about how to create the correct record, see your DNS provider's documentation. For more information about the default domain for your site, see "[About GitHub Pages](https://docs.github.com/en/articles/about-github-pages#types-of-github-pages-sites)."



## 커스텀 도메인 인증하기

* 선택사항

https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/verifying-your-custom-domain-for-github-pages

## 확인하기

* dig
* who.is