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
<div class="container">
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>
<div class="footer-container">
  <div class="container">
    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      <div class="col-md-9">
        <div class="dir-conte">
          <div class="dir">
            <h3>🗺️ Dirección</h3>
            <p>Calle 3 A # 18 - 27<br>
              Barrio Eduardo Santos<br>
              Código Postal: 111411<br>
              Bogotá DC - Colombia
            </p>
          </div>
          <div class="resp-container">
            <iframe class="resp-iframe" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.9831020023034!2d-74.091424943483!3d4.59704966963143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f991aaff91c7d%3A0x10e8344f710500d7!2sBoton+Promo+SAS!5e0!3m2!1ses-419!2sco!4v1538164624328" width="400" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="footer-block">
          <h3><i><img src="https://www.esferos.com/imagenes/logos/wha.png"></i>WhatsApp</h3>
          <p>
            <a href="https://api.whatsapp.com/send?phone=573212275275&text=Hola%21%20Estoy%20interesado%20en...&source=&data=">321 227 5275</a>
          </p>
          <h3>📱 Celular</h3>
          <p>
            <a href="tel:3212404786">321 240 4786</a><br>
            <a href="tel:3133675556">313 367 5556</a><br>
            <a href="tel:3005720451">300 572 0451</a><br>
          </p>
        </div>
      </div>
    </div>
    {block name='hook_footer_after'}
      {hook h='displayFooterAfter'}
    {/block}
    <div class="row">
      <div class="col-md-12">
        <p class="text-sm-center">
          {block name='copyright_link'}
            <a class="_blank" href="https://www.esferos.com">
              {l s='%copyright% %year% - ' sprintf=['%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
              Sitio Web Elaborado a Mano✍️ y con el 🖤 por  Boton Promo.
            </a>
          {/block}
        </p>
      </div>
    </div>
  </div>
</div>
