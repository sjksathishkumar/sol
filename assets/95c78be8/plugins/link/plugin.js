﻿/*
Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.plugins.add('link',{init:function(a){a.addCommand('link',new CKEDITOR.dialogCommand('link'));a.addCommand('anchor',new CKEDITOR.dialogCommand('anchor'));a.addCommand('unlink',new CKEDITOR.unlinkCommand());a.ui.addButton('Link',{label:a.lang.link.toolbar,command:'link'});a.ui.addButton('Unlink',{label:a.lang.unlink,command:'unlink'});a.ui.addButton('Anchor',{label:a.lang.anchor.toolbar,command:'anchor'});CKEDITOR.dialog.add('link',this.path+'dialogs/link.js');CKEDITOR.dialog.add('anchor',this.path+'dialogs/anchor.js');a.addCss('img.cke_anchor{background-image: url('+CKEDITOR.getUrl(this.path+'images/anchor.gif')+');'+'background-position: center center;'+'background-repeat: no-repeat;'+'border: 1px solid #a9a9a9;'+'width: 18px;'+'height: 18px;'+'}\n'+'a.cke_anchor'+'{'+'background-image: url('+CKEDITOR.getUrl(this.path+'images/anchor.gif')+');'+'background-position: 0 center;'+'background-repeat: no-repeat;'+'border: 1px solid #a9a9a9;'+'padding-left: 18px;'+'}');a.on('selectionChange',function(b){var c=a.getCommand('unlink'),d=b.data.path.lastElement.getAscendant('a',true);if(d&&d.getName()=='a'&&d.getAttribute('href'))c.setState(CKEDITOR.TRISTATE_OFF);else c.setState(CKEDITOR.TRISTATE_DISABLED);});if(a.addMenuItems)a.addMenuItems({anchor:{label:a.lang.anchor.menu,command:'anchor',group:'anchor'},link:{label:a.lang.link.menu,command:'link',group:'link',order:1},unlink:{label:a.lang.unlink,command:'unlink',group:'link',order:5}});if(a.contextMenu)a.contextMenu.addListener(function(b,c){if(!b)return null;var d=b.is('img')&&b.getAttribute('_cke_real_element_type')=='anchor';if(!d){if(!(b=b.getAscendant('a',true)))return null;d=b.getAttribute('name')&&!b.getAttribute('href');}return d?{anchor:CKEDITOR.TRISTATE_OFF}:{link:CKEDITOR.TRISTATE_OFF,unlink:CKEDITOR.TRISTATE_OFF};});},afterInit:function(a){var b=a.dataProcessor,c=b&&b.dataFilter;if(c)c.addRules({elements:{a:function(d){var e=d.attributes;if(e.name&&!e.href)return a.createFakeParserElement(d,'cke_anchor','anchor');}}});},requires:['fakeobjects']});CKEDITOR.unlinkCommand=function(){};CKEDITOR.unlinkCommand.prototype={exec:function(a){var b=a.getSelection(),c=b.createBookmarks(),d=b.getRanges(),e,f;for(var g=0;g<d.length;g++){e=d[g].getCommonAncestor(true);f=e.getAscendant('a',true);if(!f)continue;d[g].selectNodeContents(f);}b.selectRanges(d);a.document.$.execCommand('unlink',false,null);b.selectBookmarks(c);}};CKEDITOR.tools.extend(CKEDITOR.config,{linkShowAdvancedTab:true,linkShowTargetTab:true});
