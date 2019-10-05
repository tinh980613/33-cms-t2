<?php get_header() ?>
<!-- Page Content -->
  <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">
          <?php 
    $args = [
        'posts_per_page' => 1,
        'post__in'  => get_option( 'sticky_posts' ) 
    ];

    $the_query = new WP_Query($args);
?>

<div id="demo" class="carousel slide my-4" data-ride="carousel">

  <div class="carousel-inner">
    
    <?php if ( $the_query->have_posts() ) : ?>
        
      <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
            
            <div class="carousel-item <?php echo $the_query->current_post == 1 ? 'active' : ''  ?>">
              <?php the_post_thumbnail('blog-thumbnail',['class'=>'fuild-img']) ?>
              <div class="carousel-caption">
                <h3><a href="<?php the_permalink() ?>"><?php echo wp_trim_words( get_the_title() , 12 ) ?></a></h3>
              </div>   
            </div>
           
      <?php endwhile; ?>

    <?php endif; ?>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<?php wp_reset_postdata() ?>
<?php 
    $args = [
        'category_name' => 'doi-song',  // Slug của danh mục. Bạn có thể thêm danh mục nữa cách nhau bởi dấu , vd: 'xa-hoi,thoi-trang'
        'posts_per_page' => 6,        // Số lượng bài viết
    ];

    $the_query = new WP_Query($args);
?>
    
<div class="card my-4">
    <h5 class="card-header">
        Xã hội
    </h5>
    <div class="card-body">
        <div class="row">
            <?php if ( $the_query->have_posts() ) : ?>

              <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                    
                    <?php get_template_part( 'template-parts/content-home', get_post_format() ); ?>
                   
              <?php endwhile; ?>

            <?php endif; ?>
        </div>
    </div>
</div>
<?php wp_reset_postdata() ?>
        </div>



        <?php get_sidebar() ?>


      </div>
      <!-- /.row -->

  </div>
<!-- /.container -->
<?php get_footer() ?>
