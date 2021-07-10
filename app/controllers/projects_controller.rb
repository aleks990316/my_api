require 'application_controller'
require 'project'
require 'todo'


class ProjectsController < ApplicationController
    def index
        array_hash = []
        projects = Project.all
        for project in projects 
            tasks = Todo.where(id_project: project.id).select(:id, :text, :iscompleted)
            hash = {"id" => project.id, "title" => project.title, "todos" => tasks}
            array_hash.push(hash)
        end 
        render json: array_hash
    end
end