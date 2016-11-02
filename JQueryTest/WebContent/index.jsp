<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>jQuery标签切换效果</title>
    <link rel="stylesheet" href="imooc.css" type="text/css">
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.js"></script>
</head>

<body>
<!--代码部分begin-->
<div id="menu">
    <!--tag标题-->
    <div id="menu_female">
        <h3>女装</h3>
        <div class="tag" style="display: block;">
            <dl>
                <dd>
                    <p>第一类</p>
                    <a>1.衬衫</a>
                    <a>2.T恤</a>
                    <a>3.雪纺衫</a>
                    <a>4.针织衫</a>
                    <a>5.短外套</a>
                    <a>6.卫衣</a>
                    <a>7.小西裤</a>
                    <a>8.风衣</a>
                    <a>9.吊带背心</a>
                    <a>10.连衣裙</a>
                    <a name="setColor">11.蕾丝连衣裙</a>
                    <a>12.复古连衣裙</a>
                    <a>13.印花连衣裙</a>
                    <a>14.真丝连衣裙</a>
                    <a>更多</a>
                </dd>
            </dl>
        </div>
        <div class="tag_More" style="display:block">
            <dl>
                <dd>
                    <p>第二类</p>
                    <a>1.背带裤</a>
                    <a>2.哈伦裤</a>
                    <a>3.牛仔裤</a>
                    <a>4.休闲裤</a>
                    <a>5.小脚裤</a>
                    <a>6.西装裤</a>
                    <a>7.打底裤</a>
                    <a>8.阔脚裤</a>
                    <a>9.短裤</a>
                    <a>10.马甲/背心</a>
                    <a>11.羽绒服</a>
                    <a>12.棉服</a>
                    <a>13.夹克</a>
                    <a>14.POLO衫</a>
                    <a>更多</a>
                </dd>
            </dl>
        </div>>
    </div>
    <div id="menu_con">
        <h3>男装</h3>
        <div class="tag" style="display:block">
            <dl>
                <dd>
                    <p>第一类</p>
                    <a>1.衬衫</a>
                    <a>2.T恤</a>
                    <a>3.牛仔裤</a>
                    <a>4.休闲裤</a>
                    <a>5.短裤</a>
                    <a>6.针织衫</a>
                    <a>7.西服</a>
                    <a>8.西裤</a>
                    <a>9.嘻哈裤</a>
                    <a>10.西服套装</a>
                    <a>11.马甲/背心</a>
                    <a name="setColor">12.羽绒服</a>
                    <a>13.棉服</a>
                    <a>14.夹克</a>
                    <p>更多</p>
                </dd>
            </dl>
        </div>
        <div class="tag_More" style="display:block">
            <dl>
                <dd>
                    <p>第二类</p>
                    <a>1.衬衫</a>
                    <a>2.T恤</a>
                    <a>3.牛仔裤</a>
                    <a name='setColor'>4.休闲裤</a>
                    <a>5.短裤</a>
                    <a>6.针织衫</a>
                    <a>7.西服</a>
                    <a>8.西裤</a>
                    <a>9.嘻哈裤</a>
                    <a>10.西服套装</a>
                    <a>11.马甲/背心</a>
                    <a>12.羽绒服</a>
                    <a>13.棉服</a>
                    <a>14.夹克</a>
                    <p>更多</p>
                </dd>
            </dl>
        </div>>
    </div>
</div>

<!-- <script type="text/javascript">
    //找到男装下第一类衣服中的第一个p元素，并改变颜色
    //可以通过子类选择器  p:first-child 筛选出第一个p元素
    ?.css('color','#9932CC');
</script>

<script type="text/javascript">
    //找到男装下第一类衣服把a元素从顺序1-4加上颜色
    //可以通过基本筛选器lt,选择匹配集合中所有索引值小于给定index参数的元素
    //注意了index是从0开始计算，所以选在1-4,为对应的index就是4
   ?.css('color','red');
</script>

<script type="text/javascript">
    //找到男装所有a元素中属性名name="setColor"的元素，并设置颜色
    //这里用的属性选择器[attribute='value']选择指定属性是给定值的元素
   ?.css('color','blue');
</script>

<script type="text/javascript">
    //不分男女，选中第一类衣服中第9个a元素，并改变颜色
    //这里用了nth-child 选择的他们所有父元素的第n个子元素
    ?.css('color','#66CD00');
</script>

<script type="text/javascript">
    //找到女装下第一类衣服，把a元素中包含文字"更多"的节点，改变颜色
    ?.css('color','#C71585');
</script>
 -->


</body>

</html>