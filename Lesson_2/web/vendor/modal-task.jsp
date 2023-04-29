<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Новое задание</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
      </div>
      <form action="/tasks" method="post">
        <div class="modal-body">
          <div class="mb-3">
            <label class="form-label">Наименование :</label>
            <input type="text" name="name" class="form-control" placeholder="Наименование...">
          </div>
          <div class="mb-3">
            <label class="form-label">Описание :</label>
            <textarea class="form-control" name="comment" placeholder="Описание" rows="5"></textarea>
          </div>
          <div class="mb-3">
            <label class="form-label">Крайний срок :</label>
            <input type="date" name="date" class="form-control">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
          <button type="submit" class="btn btn-primary">Добавить</button>
        </div>
      </form>
    </div>
  </div>
</div>
