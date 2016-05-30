/**
 * Website: http://git.oschina.net/hbbcs/bootStrap-addTabs
 * 
 * Created by joe on 2015-12-19.
 */

/**
 * 
 * @param {type} options {
 * content string||html ֱ��ָ������
 * close bool �Ƿ���Թر�
 * monitor ���ӵ�����
 * }
 * 
 * @returns
 */
$.fn.addtabs = function (options) {
    obj = $(this);
    options = $.extend({
        content: '', //ֱ��ָ������ҳ��TABS����
        close: true, //�Ƿ���Թر�
        monitor: 'body', //���ӵ�����
        iframeUse: true, //ʹ��iframe����ajax
        iframeHeight: $(document).height() - 105, //�̶�TAB��IFRAME�߶�,�����Ҫ�Լ��޸�
        callback: function () { //�رպ�ص�����
        }
    }, options || {});

    $(options.monitor).on('click', '[addtabs]', function () {
        _add({
            id: $(this).attr('addtabs'),
            idx: $(this).attr('addidx'),
            group: $(this).attr('group'),
            title: $(this).attr('title') ? $(this).attr('title') : $(this).html(),
            content: options.content ? options.content : $(this).attr('content'),
            url: $(this).attr('url'),
            ajax: $(this).attr('ajax') ? true : false
        });
    });

    obj.on('click', '.close-tab', function () {
        id = $(this).prev("a").attr("aria-controls");
        _close(id);
    });

    $(window).resize(function () {
        obj.find('iframe').attr('height', options.iframeHeight);
        _drop();
    });

    _add = function (opts) {
        id = 'tab_' + opts.id;
        obj.find('.active').removeClass('active');
        //���TAB�����ڣ�����һ���µ�TAB
        if (!$("#" + id)[0]) {
            //������TAB��title
            title = $('<li role="presentation" group ="' + opts.group + '" title="' + opts.id + '" id="tab_' + id + '"><a href="#' + id + '" onclick="changeD(\'' + opts.id + '\',\''+opts.idx+'\')" aria-controls="' + id + '" role="tab" data-toggle="tab">' + opts.title + '</a></li>');
            //�Ƿ�����ر�
            if (options.close) {
                title.append(' <i class="close-tab glyphicon glyphicon-remove" onclick="closeD(\'' + opts.id + '\',\''+opts.idx+'\')"></i>');
            }
            //������TAB������
            content = $('<div role="tabpanel" class="tab-pane" id="' + id + '"></div>');
            //�Ƿ�ָ��TAB����
            if (opts.content) {
                content.append(opts.content);
            } else if (options.iframeUse && !opts.ajax) {//û�����ݣ�ʹ��IFRAME������
                content.append('<iframe src="' + opts.url + '" id="'+opts.title+'" width="100%" height="' + options.iframeHeight +
                        '" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling-x="no" scrolling-y="auto" allowtransparency="yes"></iframe></div>');
            } else {
                $.get(opts.url,function(data){
                    content.append(data); 
                });
            }
            //����TABS
            obj.find('.nav-tabs').append(title);
            obj.find(".tab-content").append(content);
        }

        //����TAB
        $("#tab_" + id).addClass('active');
        $("#" + id).addClass("active");
        _drop();
    };
    
    _close = function (id) {
        //���رյ��ǵ�ǰ�����TAB���������ǰһ��TAB
        if (obj.find("li.active").attr('id') == "tab_" + id) {
            $("#tab_" + id).prev().addClass('active');
            $("#" + id).prev().addClass('active');
        }
        //�ر�TAB
        $("#tab_" + id).remove();
        $("#" + id).remove();
        _drop();
        options.callback();
    };

    _drop = function () {
        element=obj.find('.nav-tabs');
        //����������ǩ
        var dropdown = $('<li class="dropdown pull-right hide tabdrop"><a class="dropdown-toggle" data-toggle="dropdown" href="#">' +
                '<i class="glyphicon glyphicon-align-justify"></i>' +
                ' <b class="caret"></b></a><ul class="dropdown-menu"></ul></li>');
        //����Ƿ�������
        if (!$('.tabdrop').html()) {
            dropdown.prependTo(element);
        } else {
            dropdown = element.find('.tabdrop');
        }
        //����Ƿ���������ʽ
        if (element.parent().is('.tabs-below')) {
            dropdown.addClass('dropup');
        }
        var collection = 0;

        //��鳬��һ�еı�ǩҳ
        element.append(dropdown.find('li'))
                .find('>li')
                .not('.tabdrop')                
                .each(function () {
                    if (this.offsetTop > 0) {
                        dropdown.find('ul').append($(this));
                        collection++;
                    }
                });

        //����г����ģ���ʾ������ǩ
        if (collection > 0) {
            dropdown.removeClass('hide');
            if (dropdown.find('.active').length == 1) {
                dropdown.addClass('active');
            } else {
                dropdown.removeClass('active');
            }
        } else {
            dropdown.addClass('hide');
        }
    };  
};