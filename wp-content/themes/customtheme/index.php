<?php get_header(); ?>
    <div class="content">
        <section id="main-content">
            <?php
                if( have_posts() ) : while( have_posts() ) : the_post();
                endwhile;
                else;
                endif;
            ?>
        </section>
        <section id="side-bar">

        </section>
    </div>
<?php get_footer(); ?>