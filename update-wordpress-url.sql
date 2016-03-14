# CHANGER URL DU SITE

UPDATE wp_options
SET option_value = REPLACE(option_value, 'http://www.vieuxsite.fr', 'http://www.nouveausite.fr')
WHERE option_name = 'home' 
OR option_name = 'siteurl';



# CHANGER URL DES GUID (GLOBAL UNIQUE IDENTIFIER)

UPDATE wp_posts
SET guid = REPLACE(guid, 'http://www.vieuxsite.fr', 'http://www.nouveausite.fr');



# CHANGER LES URL DES CONTENUS DES ARTICLES 
# (LIEN, IMAGE, DOCUMENT)

UPDATE wp_posts
SET post_content = REPLACE(post_content, 'http://www.vieuxsite.fr', 'http://www.nouveausite.fr');



# CHANGER LES URL DES DONNEES META DES POSTS

UPDATE wp_postmeta
SET meta_value = REPLACE(meta_value, 'http://www.vieuxsite.fr','http://www.nouveausite.fr');