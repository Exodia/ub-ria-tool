/**
 * <%-: project.alias %>
 * Copyright 2014 Baidu Inc. All rights reserved.
 *
 * @ignore
 * @file <%-: description %>表单数据模型类
 * @author <%-: developer.name %>(<%- developer.email %>)
 */
define(
    function (require) {
        var util = require('er/util');
        var FormModel = require('ub-ria/FormModel');
        var Data = require('./Data');
        var GlobalData = require('ub-ria/GlobalData');

        /**
         * <%-: description %>表单数据模型类
         *
         * @extends ub-ria.FormModel
         * @constructor
         */
        function <%-: modelType %>() {
            FormModel.apply(this, arguments);
            this.addData(new Data());
            this.addData('global', GlobalData.getInstance());
        }

        util.inherits(<%-: modelType %>, FormModel);

        /**
         * 数据源配置
         *
         * @type {Object}
         * @override
         */
        <%-: modelType %>.prototype.datasource = {
            crumbPath: function (model) {
                var path = [
                    { 
                        text: '<%-: description %>', 
                        href: '#/<%-: entity %>/list'
                    },
                    { 
                        text: model.get('title')
                    }
                ];
                return path;
            }
            // TODO: 添加除加载修改用的实体外的其它数据源，如果没有则删除此段代码
        };

        return <%-: modelType %>;
    }
);
