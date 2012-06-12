<form action="<?php echo JRoute::_('index.php') ; ?>&option=com_virtuemart&nosef=1&view=cart&task=changeProduct" method="post">
    <?php echo JHTML::_('select.genericlist', $this->prods, 'newProd', '', 'value', 'text', null ); ?> <input type="submit" value="Cambiar" />
</form>