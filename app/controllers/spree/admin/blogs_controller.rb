module Spree
  module Admin
    class BlogsController < ResourceController
      before_action :collection, only: :index

      def index
      end

      def show
        session[:return_to] ||= request.referer
      end

      private
      def collection
        @collection = Spree::Blog::Article.all
        @collection
      end
    end
  end
end
