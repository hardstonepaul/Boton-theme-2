{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <div class="header-nav">
    <div class="nav-conte">
      <div class="col-">
        {hook h='displayNav1'}
      </div>
      <div class="col-">
        {hook h='displayNav2'}
        <div class="hidden-md-up mobile">
          <div class="float-xs-right" id="_mobile_user_info"></div>
        </div>
      </div>
      <div class="col-">
        {hook h='displayNav3'}
        <div class="hidden-md-up mobile">
          <div class="float-xs-right" id="_mobile_cart"></div>
        </div>
      </div>
      {*<div class="float-xs-left" id="menu-icon">
        <i class="material-icons d-inline">&#xE5D2;</i>
      </div>*}
      {*<div class="top-logo" id="_mobile_logo"></div>*}
      {*<div class="clearfix"></div>*}
    </div>
  </div>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="fl-menu">
      <div class="logo-cont">
        <a href="{$urls.pages.index}">
          <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}" loading="lazy">
        </a>
      </div>
      <nav>
        {hook h='displayTop'}
      </nav>
      {*<div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
        <div class="js-top-menu-bottom">
          <div id="_mobile_currency_selector"></div>
          <div id="_mobile_language_selector"></div>
          <div id="_mobile_contact_link"></div>
        </div>
      </div>*}
    </div>
  </div>
  <div class="search-conte">
    {hook h='displayNavFullWidth'}
    <div class="ad-conte">
      <a href="#">
        <button type="button" class="btn btn-link">
          <span class="hidden-md-down">{l s='Payments' d='Shop.Theme.Global'}</span>
          <i><img src="https://esferos.com/imagenes/logos/pse8.png" alt="Pagos PSE"></i>
        </button>
      </a>
      <a href="#">
        <button type="button" class="btn btn-link">
          <i class="material-icons">description</i>
          <span class="hidden-md-down">{l s='Purchase Order' d='Shop.Theme.Global'}</span>
      </button></a>
      <a href="#">
        <button type="button" class="btn btn-link">
          <i class="material-icons">menu_book</i>
          <span class="hidden-md-down">{l s='Catalogs' d='Shop.Theme.Global'}</span>
        </button>
      </a>
    </div>
  </div>
{/block}
