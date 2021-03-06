<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0">

    <title><?= $site->title()->html() ?></title>
    <meta name="description" content="<?= $site->description()->html() ?>">
    <meta name="keywords" content="<?= $site->keywords()->html() ?>">
    <meta name="author" content="<?= $site->author() ?>">

    <?= css('assets/css/app.css') ?>
  </head>
  <body class="<?= AWM::body_classes(['awm']) ?>">

    <header>
      <article>
        <div class="column full">
          <h1>
            <?= html::a(url(), $site->author()->html()) ?>
          </h1>
        </div>
      </article>
    </header>
