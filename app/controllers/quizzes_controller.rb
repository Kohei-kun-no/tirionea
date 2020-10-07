class QuizzesController < ApplicationController

def top
end

def tirionea_top
end

def select
end

def tirionea_1
end
def tirionea_2
end
def tirionea_3
end
def tirionea_4
end
def tirionea_5
end

def answer_1
end
def answer_2
end
def answer_3
end
def answer_4
end
def answer_5
end

def new
    @tweet = Tweet.new
end

def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to :action => "top"
    else
      redirect_to :action => "new"
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body)
  end

end
