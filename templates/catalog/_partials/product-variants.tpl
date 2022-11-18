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

<div class="product-variants">
  {foreach from=$groups key=id_attribute_group item=group}
    {if !empty($group.attributes)}
    <div class="clearfix product-variants-item">
      <span class="control-label">{$group.name}{l s=': ' d='Shop.Theme.Catalog'}
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            {if $group_attribute.selected}{$group_attribute.name}{/if}
          {/foreach}
      </span>
      {if $group.group_type == 'select'}
        {*$group_t='select' scope='root'*}
        <select
          class="form-control form-control-select"
          id="group_{$id_attribute_group}"
          data-product-attribute="{$id_attribute_group}"
          name="group[{$id_attribute_group}]">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <option value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} selected="selected"{/if}>{$group_attribute.name}</option>
          {/foreach}
        </select>
      {elseif $group.group_type == 'color'}
        {*$group_t='color' scope='root'*}
        <ul id="group_{$id_attribute_group}">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <li class="input-container">
              <label aria-label="{$group_attribute.name}">
                <input
                  class="input-color"
                  type="radio"
                  data-product-attribute="{$id_attribute_group}"
                  name="group[{$id_attribute_group}]"
                  value="{$id_attribute}"
                  title="{$group_attribute.name}"
                  {if $group_attribute.selected} checked="checked"{/if}>
                <span class="color-var"
                  {if $group_attribute.texture}
                    class="color texture" style="background-image: url({$group_attribute.texture})"
                  {elseif $group_attribute.html_color_code}
                    class="color"
                    style="background-color: {$group_attribute.html_color_code};
                    {if $group_attribute.selected}
                      border-color: {$group_attribute.html_color_code};
                      outline: {$group_attribute.html_color_code} solid 3px;
                    {/if}
                    "
                  {/if}
                >{*<span class="sr-only">{$group_attribute.name}</span>*}
                </span>
                <span
                  class="color-name"
                  {if $group_attribute.selected}
                    style="border-color: {$group_attribute.html_color_code}; outline: {$group_attribute.html_color_code} solid 3px; background-color: #fff"
                  {/if}
                >{$group_attribute.name}
                {if $groups|count == 1}:
                  {$group_attribute.qty} - {l s='Ref:' d='Shop.Theme.Catalog'} {$group_attribute.ref}
                    {if $group_attribute.qty == 0} -
                      {if $group_attribute.avdate|date_format > $smarty.now|date_format}
                        {l s='Approximate Transit:' d='Shop.Theme.Catalog'} {$group_attribute.avdate|date_format:"%b %y"}
                      {else}
                        {l s='Unconfirmed Transit' d='Shop.Theme.Catalog'}
                      {/if}
                    {/if}
                {/if}
                </span>
              </label>
            </li>
          {/foreach}
        </ul>
      {elseif $group.group_type == 'radio'}
        {*$group_t='radio' scope='root'*}
        <ul id="group_{$id_attribute_group}">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <li class="input-container float-xs-left">
              <label>
                <input class="input-radio" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} checked="checked"{/if}>
                <span class="radio-label">{$group_attribute.name}</span>
              </label>
            </li>
          {/foreach}
        </ul>
      {/if}
    </div>
    {/if}
  {/foreach}
</div>
