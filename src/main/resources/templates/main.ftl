<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    <div>
<@l.logaut/>
    </div>
    <div>
        <form method="post" action="/main">
            <input type="text" name="text" placeholder="Введите сообщение">
            <input type="text" name="tag" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Добавить</button>
        </form>
        <br>
        <form method="get" action="filter">
            <input type="text" name="tag" placeholder="Введите тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Найти</button>
        </form>

    </div>
    <div>Список сообщений</div>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.getAuthorName}</strong>
    </div>
        <#else >
        No messages
    </#list>
</@c.page>
