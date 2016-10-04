# require 'mailgun'
class HomeController < ApplicationController
  def index
      @every_post=Post.all.order("id desc")
      

      
  end
  
  def destroy
    @one_post =Post.find(
      params[:post_id]
      )
      @one_post.destroy
    redirect_to "/home/list"
    
    end
    
      def destroy1
      @one_post =Picture.find(
      params[:post_id]
      )
      @one_post.destroy
     redirect_to "/home/galleryModal1"
    
    end
    
      def destroy2
      @one_post =Picture2.find(
      params[:post_id]
      )
      @one_post.destroy
     redirect_to "/home/galleryModal2"
    
    end
    
      def destroy3
      @one_post =Picture3.find(
      params[:post_id]
      )
      @one_post.destroy
     redirect_to "/home/galleryModal3"
     
    end
    
      def destroy4
      @one_post =Picture4.find(
      params[:post_id]
      )
      @one_post.destroy
     redirect_to "/home/galleryModal4"
    
    end
    
    def update_view
      @one_post=Post.find(params[:post_id])
     
    end
    def siljae
    @one_post=Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content =params[:content]
    @one_post.name1 =params[:name1]
    @one_post.save
    
    redirect_to "/home/list"
  end
  
  
  def write
       

  end
  def write_end
          # @every_post=Post.all.order("id desc")
          @youjacha=params[:title]
          @coffe=params[:content]
          @siba=params[:name1]
          
          new_post=Post.new
          new_post.title =@youjacha
          new_post.content =@coffe
          new_post.name1 =@siba
          new_post.save
          
          redirect_to "/"
  end
  
  def write_end2
        @a1=params[:name]
        @a2=params[:email]
        @a3=params[:phone]
         @a4=params[:content]

          new_post1=Post.new
          new_post1.name = @a1
          new_post1.email = @a2
          new_post1.phone = @a3
          new_post1.content = @a4
          new_post1.save
          @every_mail=Post.all.order("id desc")
          redirect_to "/#last"
         
  end
  
  
   def three1
  end
  def galleryModal1
    @pictures=Picture.all.reverse
    @count=0
  end
    def galleryModal2
    @picture2s=Picture2.all.reverse
    @count=0
  end
    def galleryModal3
    @picture3s=Picture3.all.reverse
    @count=0
    @count2=0
  end
    def galleryModal4
    @picture4s=Picture4.all.reverse
    @count=0
  end

  def list
            @every_post=Post.all.order("id desc")
          
  end
     def seee
       @one_post=Post.find(params[:post_id])
    end
    
    def upload1
          post=Picture.new(title: params[:title])
        uploader = MachineUploader.new
        uploader.store!(params[:pic])
        
        post.image_url=uploader.url
         if post.save
           redirect_to "/home/galleryModal1"
         else
          # render :text => post.errors.messages[:title].first
          render :text => "다시해"
 
         end
    end
    
      def upload1
          post=Picture.new(title: params[:title])
        uploader = MachineUploader.new
        uploader.store!(params[:pic])
        
        post.image_url=uploader.url
         if post.save
           redirect_to "/home/galleryModal1"
         else
          # render :text => post.errors.messages[:title].first
          render :text => "다시해"
 
         end
    end
  
   def upload2
          post=Picture2.new(title: params[:title])
        uploader = MachineUploader.new
        uploader.store!(params[:pic])
        
        post.image_url=uploader.url
         if post.save
           redirect_to "/home/galleryModal2"
         else
          # render :text => post.errors.messages[:title].first
          render :text => "다시해"
 
         end
    end
  
   def upload3
          post=Picture3.new(title: params[:title])
        uploader = MachineUploader.new
        uploader.store!(params[:pic])
        
        post.image_url=uploader.url
         if post.save
           redirect_to "/home/galleryModal3"
         else
          # render :text => post.errors.messages[:title].first
          render :text => "다시해"
 
         end
    end

 def upload4
          post=Picture4.new(title: params[:title])
        uploader = MachineUploader.new
        uploader.store!(params[:pic])
        
        post.image_url=uploader.url
         if post.save
           redirect_to "/home/galleryModal4"
         else
          # render :text => post.errors.messages[:title].first
          render :text => "다시해"
 
         end
    end
    def write_email
     @a1=params[:name]
        @a2=params[:email]
        @a3=params[:phone]
         @a4=params[:content]

          new_post1=Mail.new
          new_post1.name = @a1
          new_post1.email = @a2
          new_post1.phone = @a3
          new_post1.content = @a4
          new_post1.save
           @every_mail=Mail.all.order("id desc")
          # redirect_to "/"
     
    end
    # def write_email1
    
    # end
    
     def talk_write
        post=Talk2.new
        post.title=params[:title]
        post.name=params[:name]
        post.pass=params[:pass]
        post.content=params[:content]
        post.save
        
        redirect_to "/talk_list"
    end
    def talk_list
       @pictures=Talk2.all.reverse
       @count=0
    end
     def talk_list2
       @pictures=Talk2.all.reverse
       @count2=0
    end
    def talk_detail
        @pictures=Talk2.find(params[:post_id])
        @pass=params[:password]
    end
    def destroy_talk
        @pictures=Talk2.find(params[:post_id])
        @pictures.destroy
        redirect_to "/talk_list"
    end
      def update_talk
      @pictures=Talk2.find(params[:post_id])
  end
  
  def real_talk_update   
    
        post=Talk2.find(params[:post_id])
        post.title=params[:title]
        post.name=params[:name]
        post.pass=params[:pass]
        post.content=params[:content]
        post.save
        
        redirect_to "/talk_list"
         
  end  


end

