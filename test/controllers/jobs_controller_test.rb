require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { compensation_type: @job.compensation_type, contact: @job.contact, deadline: @job.deadline, description: @job.description, duration: @job.duration, hirer: @job.hirer, qualifications: @job.qualifications, start_date: @job.start_date, title: @job.title, url: @job.url }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { compensation_type: @job.compensation_type, contact: @job.contact, deadline: @job.deadline, description: @job.description, duration: @job.duration, hirer: @job.hirer, qualifications: @job.qualifications, start_date: @job.start_date, title: @job.title, url: @job.url }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
