/**
 * Copyright (c) UNA, Inc - https://una.io
 * MIT License - https://opensource.org/licenses/MIT
 *
 * @defgroup    Timeline Timeline
 * @ingroup     UnaModules
 *
 * @{
 */

function BxTimelineMain() {
	this.sIdPost = '#bx-timeline-post';

	this.sIdView = '#bx-timeline-';
	this.sIdViewTimeline = '#bx-timeline-timeline';
	this.sIdViewOutline = '#bx-timeline-outline';
	this.sIdItem = '#bx-timeline-item-';
	this.sIdItemTimeline = '#bx-timeline-item-timeline-';
	this.sIdItemOutline = '#bx-timeline-item-outline-';

	this.sSP = 'bx-tl';
	this.sClassView = this.sSP + '-view';
	this.sClassMasonry = this.sSP + '-masonry';
	this.sClassItems = this.sSP + '-items';
	this.sClassItem = this.sSP + '-item';
	this.sClassDividerToday = this.sSP + '-divider-today';
	this.sClassItemComments = this.sSP + '-item-comments-holder';
	this.sClassItemImages = this.sSP + '-item-images';
	this.sClassItemImage = this.sSP + '-item-image';

	this.oViewTimeline = null;
	this.bViewTimeline = false;

	this.oViewOutline = null;
	this.bViewOutline = false;
}

BxTimelineMain.prototype.isMasonry = function() {
	return $(this.sIdViewOutline + ' .' + this.sClassItems).hasClass(this.sClassMasonry);
};

BxTimelineMain.prototype.isMasonryEmpty = function() {
	return $(this.sIdViewOutline + ' .' + this.sClassItems + ' .' + this.sClassItem).length == 0;
};

BxTimelineMain.prototype.initMasonry = function() {
	var $this = this;
	var oHolder = $(this.sIdViewOutline + ' .' + this.sClassItems);

	var oItems = oHolder.find('.' + this.sClassItem);
	if(oItems.length == 0) 
		return;

	oItems.resize(function(){
		$this.reloadMasonry();
	});

	oHolder.addClass(this.sClassMasonry).masonry({
	  itemSelector: '.' + this.sClassItem,
	  columnWidth: '.' + this.sSP + '-grid-sizer'
	});
};

BxTimelineMain.prototype.destroyMasonry = function() {
	$(this.sIdViewOutline + ' .' + this.sClassItems).removeClass(this.sClassMasonry).masonry('destroy');
};

BxTimelineMain.prototype.appendMasonry = function(oItems) {
	var $this = this;
	var oItems = $(oItems);
	oItems.resize(function(){
		$this.reloadMasonry();
	}).find('img.' + this.sSP + '-item-image').load(function() {
		$this.reloadMasonry();
	});

	var oHolder = $(this.sIdViewOutline + ' .' + this.sClassItems).masonry('layout').append(oItems);
	if(!this.isMasonry())
		this.initMasonry();
	else
		oHolder.masonry('appended', oItems).masonry('layout');
};

BxTimelineMain.prototype.prependMasonry = function(oItems) {
	var $this = this;
	var oItems = $(oItems);
	oItems.resize(function(){
		$this.reloadMasonry();
	}).find('img.' + this.sSP + '-item-image').load(function() {
		$this.reloadMasonry();
	});

	var oHolder = $(this.sIdViewOutline + ' .' + this.sClassItems).masonry('layout').prepend(oItems);
	if(!this.isMasonry())
		this.initMasonry();
	else
		oHolder.masonry('prepended', oItems).masonry('layout');
};

BxTimelineMain.prototype.removeMasonry = function(oItems, onRemove) {
	var $this = this;
	var oItems = $(oItems);

	var oHolder = $(this.sIdViewOutline + ' .' + this.sClassItems);
	if(typeof onRemove === 'function')
		oHolder.masonry('once', 'removeComplete', onRemove);

	oHolder.masonry('remove', oItems).masonry('layout');
};

BxTimelineMain.prototype.reloadMasonry = function() {
	$(this.sIdViewOutline + ' .' + this.sClassItems).masonry('reloadItems').masonry('layout');
};

BxTimelineMain.prototype.initFlickity = function() {
	var $this = this;

	$('.' + this.sClassView + ' .' + this.sClassItemImages).each(function() {
		if($(this).find('.' + $this.sClassItemImage).length <= 1)
			return;

		$(this).flickity({
			cellSelector: 'div.' + $this.sClassItemImage,
			cellAlign: 'left',
			pageDots: false,
			imagesLoaded: true
		});
	});
};

BxTimelineMain.prototype.processResult = function(oData) {
	var $this = this;

	if(oData && oData.msg != undefined && oData.msg.length != 0)
    	alert(oData.msg);

	if(oData && oData.message != undefined && oData.message.length != 0)
    	alert(oData.message);

    if(oData && oData.reload != undefined && parseInt(oData.reload) == 1)
    	document.location = document.location;

    if(oData && oData.popup != undefined) {
    	var oPopup = null;
    	var oOptions = {
            fog: {
				color: '#fff',
				opacity: .7
            },
            closeOnOuterClick: false
        };

    	if(typeof(oData.popup) == 'object') {
    		oOptions = $.extend({}, oOptions, oData.popup.options);
    		oPopup = $(oData.popup.html);
    	}
    	else 
    		oPopup = $(oData.popup);

    	$('#' + oPopup.attr('id')).remove();
        oPopup.hide().prependTo('body').bxTime().dolPopup(oOptions);
    }

    if (oData && oData.eval != undefined)
        eval(oData.eval);
};

BxTimelineMain.prototype.loadingInButton = function(e, bShow) {
	if($(e).length)
		bx_loading_btn($(e), bShow);
	else
		bx_loading($('body'), bShow);	
};

BxTimelineMain.prototype.loadingInItem = function(e, bShow) {
	var oParent = $('body');
	if($(e).length)
		oParent = !$(e).hasClass(this.sClassItem) ? $(e).parents('.' + this.sClassItem + ':first') : $(e);

	bx_loading(oParent, bShow);
};

BxTimelineMain.prototype.loadingInBlock = function(e, bShow) {
	var oParent = $(e).length ? $(e).parents('.bx-db-container:first') : $('body'); 
	bx_loading(oParent, bShow);
};

BxTimelineMain.prototype.loadingInPopup = function(e, bShow) {
	var oParent = $(e).length ? $(e).parents('.bx-popup-content:first') : $('body'); 
	bx_loading(oParent, bShow);
};

BxTimelineMain.prototype._loading = function(e, bShow) {
	var oParent = $(e).length ? $(e) : $('body'); 
	bx_loading(oParent, bShow);
};

BxTimelineMain.prototype._getView = function(oView) {
	oView = $(oView);
	if(!oView.hasClass(this.sClassView))
		oView = oView.parents('.bx-db-container:first').find('.' + this.sClassView + ':first');

	if(oView.hasClass(this.sClassView + '-timeline'))
		return 'timeline';

	if(oView.hasClass(this.sClassView + '-outline'))
		return 'outline';

	return '';
};

BxTimelineMain.prototype._getDefaultData = function(oElement) {
	var oDate = new Date();
    return jQuery.extend({}, this._oRequestParams, {
    	view: oElement != undefined ? this._getView(oElement) : '',
		_t:oDate.getTime()
    });
};
