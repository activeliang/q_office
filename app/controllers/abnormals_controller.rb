class AbnormalsController < ApplicationController

  def  index
    @abnormals = Abnormal.all
  end

  def new
    @abnormal = Abnormal.new
  end

  def create
    @abnormal = Abnormal.new(abnormal_params)
    if @abnormal.save
      redirect_to abnormals_path, notice: "success!存入成功！"
    else
      redirect_to :back, alert: "存入失败，检查下数据有无问题。。。"
    end
  end


  private
  def abnormal_params
    params.require(:abnormal).permit(:envelop, :principal, :reason, :faulter, :delivery, :department, :remarks, :input_time, :client, :model_no, :quantity, :raw_delivery, :merchandiser)
  end
end
