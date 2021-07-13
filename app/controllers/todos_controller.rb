class TodosController < ApplicationController
    def update
        todo = Todo.find_by(id: params[:id], id_project: params[:project_id])
        if todo
            todo.update(iscompleted: !todo.iscompleted)
        end
    end
    def create
    end
end