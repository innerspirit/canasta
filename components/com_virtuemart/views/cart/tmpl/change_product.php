<form action="<?php echo JRoute::_('index.php') ; ?>&option=com_virtuemart&nosef=1&view=cart&task=changeProduct" method="post">
    <input type="hidden" name="original" value="<?php echo $this->original; ?>" />
    <?php echo JHTML::_('select.genericlist', $this->prods, 'virtuemart_product_id', '', 'value', 'text', null ); ?>
    <input type="submit" value="Cambiar" />
</form>