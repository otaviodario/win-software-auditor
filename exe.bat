<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <base target="_top">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <title>Catálogo</title>
    
    <link rel="icon" type="image/png" href="https://t0.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=https://www.reidofitness.com.br/admin/sales/orders&size=64" />
    <link rel="shortcut icon" type="image/png" href="https://t0.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=https://www.reidofitness.com.br/admin/sales/orders&size=64" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    
    <style>
      :root, html {
        --accent-color: #d4af37;
        --background-color: #f4f6f9;
        --surface-color: #ffffff;
        --primary-text: #222222;
        --secondary-text: #666666;
        --border-color: #e0e0e0;
        --header-bg: #111111;
        --shadow-color: rgba(0, 0, 0, 0.08);
        --th-bg: #f8f9fa;
        --danger-color: #e74c3c;
        --success-color: #2ecc71;
        --scrollbar-track: #f0f2f5;
        --scrollbar-thumb: #c1c7cd;
        --scrollbar-thumb-hover: #9ca3af;
        color-scheme: light;
      }

      html.dark-theme, body.dark-theme {
        --background-color: #121212;
        --surface-color: #1e1e1e;
        --primary-text: #f0f0f0;
        --secondary-text: #aaaaaa;
        --border-color: #333333;
        --header-bg: #0a0a0a;
        --shadow-color: rgba(0, 0, 0, 0.5);
        --th-bg: #252525;
        --scrollbar-track: #151515;
        --scrollbar-thumb: #333333;
        --scrollbar-thumb-hover: #4a4a4a;
        color-scheme: dark;
      }

      * { 
        box-sizing: border-box; 
        margin: 0; 
        padding: 0; 
        scrollbar-width: thin;
        scrollbar-color: var(--scrollbar-thumb) var(--scrollbar-track);
      }

      /* Estilização Personalizada da Barra de Rolagem (Chrome, Edge, Safari, Opera) */
      ::-webkit-scrollbar {
        width: 8px;
        height: 8px;
      }
      ::-webkit-scrollbar-track {
        background: var(--scrollbar-track);
      }
      ::-webkit-scrollbar-thumb {
        background-color: var(--scrollbar-thumb);
        border-radius: 4px;
        border: 2px solid var(--scrollbar-track);
      }
      ::-webkit-scrollbar-thumb:hover {
        background-color: var(--scrollbar-thumb-hover);
      }

      body { font-family: 'Roboto', sans-serif; background-color: var(--background-color); color: var(--primary-text); margin: 0; padding: 0; transition: background-color 0.3s, color 0.3s; }

      .sticky-header { position: sticky; top: 0; z-index: 1000; background: var(--header-bg); box-shadow: 0 4px 12px var(--shadow-color); padding-bottom: 10px; }
      .header-top { display: flex; justify-content: space-between; align-items: center; padding: 10px 15px; }
      .brand h1 { font-family: 'Bebas Neue', sans-serif; font-size: 2.2em; color: var(--accent-color); margin: 0; letter-spacing: 1.5px; }
      .header-actions { display: flex; align-items: center; gap: 10px; }
      .mobile-filter-btn { background: var(--accent-color); color: #fff; border: none; padding: 8px 12px; border-radius: 6px; font-weight: 500; cursor: pointer; display: flex; align-items: center; gap: 6px; font-size: 0.9em; }
      .theme-btn, .admin-btn, .admin-nav-btn { width: 38px; height: 38px; border-radius: 50%; border: 1px solid var(--border-color); background: var(--surface-color); color: var(--primary-text); display: flex; align-items: center; justify-content: center; cursor: pointer; transition: all 0.2s; font-size: 1.05em; }
      .theme-btn:hover, .admin-btn:hover, .admin-nav-btn:hover { border-color: var(--accent-color); color: var(--accent-color); transform: scale(1.05); }
      .admin-nav-btn.active { background: var(--accent-color); color: #fff; border-color: var(--accent-color); }

      .filters { display: flex; flex-direction: column; gap: 10px; padding: 10px 15px; transition: max-height 0.3s ease; }
      .filters.recolhido { display: none; }
      .filters input, .filters select { padding: 10px 12px; border: 1px solid var(--border-color); border-radius: 6px; background: var(--surface-color); color: var(--primary-text); font-size: 0.95em; outline: none; transition: border-color 0.2s; }
      .filters input:focus, .filters select:focus { border-color: var(--accent-color); }

      .container { max-width: 1400px; margin: 0 auto; padding: 15px; }
      #loading { text-align: center; font-size: 1.2em; color: var(--accent-color); padding: 40px 0; font-weight: 500; }
      #public-view { display: block; }
      #admin-view { display: none; }
      .product-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(240px, 1fr)); gap: 15px; }
      .product-card { background: var(--surface-color); border: 1px solid var(--border-color); border-radius: 10px; overflow: hidden; box-shadow: 0 4px 10px var(--shadow-color); transition: transform 0.2s, box-shadow 0.2s, border-color 0.2s; cursor: pointer; display: flex; flex-direction: column; }
      .product-card:hover { transform: translateY(-4px); box-shadow: 0 8px 20px var(--shadow-color); border-color: var(--accent-color); }
      .product-image-container { width: 100%; aspect-ratio: 1 / 1; background: #fff; display: flex; align-items: center; justify-content: center; overflow: hidden; border-bottom: 1px solid var(--border-color); }
      body.dark-theme .product-image-container { background: #1c1c1c; }
      .product-image { width: 100%; height: 100%; object-fit: contain; transition: transform 0.3s; }
      .product-card:hover .product-image { transform: scale(1.04); }
      .product-info { padding: 14px; display: flex; flex-direction: column; flex-grow: 1; }
      .badge-variacoes { display: inline-flex; align-items: center; gap: 5px; font-size: 0.75em; font-weight: 600; color: var(--accent-color); background: rgba(212, 175, 55, 0.15); border: 1px solid rgba(212, 175, 55, 0.3); border-radius: 4px; padding: 3px 7px; width: fit-content; margin-bottom: 8px; }
      .product-info h3 { margin: 0 0 6px 0; font-size: 1.05em; font-weight: 600; color: var(--primary-text); line-height: 1.35; display: -webkit-box; -webkit-line-clamp: 2; line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }
      .product-info .category { font-size: 0.82em; color: var(--secondary-text); margin-bottom: 4px; }
      .product-info .sku { font-size: 0.8em; color: var(--secondary-text); margin-bottom: 8px; font-weight: 500; }
      .product-info .price { font-size: 1.25em; font-weight: 700; color: var(--accent-color); margin-top: auto; padding-top: 6px; }

      .admin-header { display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; gap: 15px; margin-bottom: 20px; }
      .admin-header h2 { font-family: 'Bebas Neue', sans-serif; font-size: 2.2em; letter-spacing: 1px; margin: 0; }
      .admin-controls { display: flex; align-items: center; gap: 10px; flex-wrap: wrap; }
      .admin-controls input, .admin-controls select { padding: 9px 12px; border: 1px solid var(--border-color); border-radius: 6px; background: var(--surface-color); color: var(--primary-text); font-size: 0.9em; outline: none; }
      .admin-controls input:focus, .admin-controls select:focus { border-color: var(--accent-color); }
      .btn-primary { background: var(--accent-color); color: #fff; border: none; padding: 9px 16px; border-radius: 6px; font-weight: 600; cursor: pointer; transition: opacity 0.2s; font-size: 0.9em; display: inline-flex; align-items: center; gap: 6px; }
      .btn-primary:hover { opacity: 0.9; }
      .btn-secondary { background: var(--surface-color); color: var(--primary-text); border: 1px solid var(--border-color); padding: 9px 14px; border-radius: 6px; font-weight: 500; cursor: pointer; transition: all 0.2s; font-size: 0.9em; display: inline-flex; align-items: center; gap: 6px; }
      .btn-secondary:hover { border-color: var(--accent-color); color: var(--accent-color); }
      .dropdown { position: relative; display: inline-block; }
      .dropdown-content { display: none; position: absolute; background: var(--surface-color); box-shadow: 0px 8px 20px rgba(0,0,0,0.3); z-index: 999; border: 1px solid var(--border-color); border-radius: 6px; padding: 15px; left: 0; top: 110%; }
      .dropdown-content.show { display: flex; flex-direction: column; gap: 12px; }
      .dropdown-content label, .dropdown-content button { display: flex; align-items: center; gap: 8px; font-size: 0.95em; cursor: pointer; color: var(--primary-text); white-space: nowrap; background: none; border: none; padding: 5px; width: 100%; text-align: left;}
      .dropdown-content input[type="checkbox"] { transform: scale(1.2); accent-color: var(--accent-color); cursor: pointer; }
      .dropdown-content button:hover { color: var(--accent-color); }
      .min-w-200 { min-width: 200px; }

      .table-responsive { width: 100%; overflow-x: auto; -webkit-overflow-scrolling: touch; background: var(--surface-color); border-radius: 8px; border: 1px solid var(--border-color); box-shadow: 0 2px 10px var(--shadow-color); }
      .admin-table { width: 100%; border-collapse: collapse; text-align: left; position: relative; }
      .admin-table th, .admin-table td { padding: 12px 15px; border-bottom: 1px solid var(--border-color); white-space: nowrap; }
      .admin-table th { background: var(--th-bg); font-weight: 600; }
      .admin-table img { width: 45px; height: 45px; object-fit: contain; border-radius: 4px; background: #fff; border: 1px solid var(--border-color); }
      .admin-table td.wrap-text { white-space: normal; min-width: 150px; } 

      .action-btn { background: none; border: none; font-size: 1.2em; cursor: pointer; color: var(--secondary-text); padding: 5px 8px; border-radius: 4px; transition: background 0.2s;}
      .action-btn.edit:hover { color: var(--accent-color); background: rgba(212, 175, 55, 0.1); }
      .action-btn.delete:hover { color: var(--danger-color); background: rgba(231, 76, 60, 0.1); }
      .action-btn.add-var:hover { color: var(--success-color); background: rgba(46, 204, 113, 0.1); }
      .admin-table .col-acoes { position: sticky; right: 0; background-color: var(--surface-color); border-left: 1px solid var(--border-color); text-align: center; z-index: 2; }
      .admin-table th.col-acoes { background-color: var(--th-bg); z-index: 3; }
      .admin-table th.col-pai, .admin-table td.col-pai { text-align: center; }
      .hide-prod .col-prod, .hide-cat .col-cat, .hide-sub .col-sub, .hide-val .col-val, .hide-pai .col-pai { display: none; }

      /* Identificador visual de Variação na Tabela */
      .tr-variacao td:first-child { border-left: 3px solid var(--accent-color); }
      .tag-variacao-tabela { display: inline-block; font-size: 0.72em; padding: 2px 6px; border-radius: 3px; background: rgba(212, 175, 55, 0.2); color: var(--accent-color); font-weight: 600; margin-left: 6px; }

      /* Ajuste específico para a tabela de logs */
      .table-logs th, .table-logs td { white-space: normal; word-break: break-word; }
      .table-logs td.wrap-text { min-width: 0; }

      /* MODAIS */
      .modal-overlay { display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.6); z-index: 2000; justify-content: center; align-items: center; padding: 15px; box-sizing: border-box; overflow-x: hidden; }
      .modal-content { background: var(--surface-color); padding: 25px; border-radius: 12px; width: 100%; max-width: 400px; box-shadow: 0 10px 30px rgba(0,0,0,0.3); border: 1px solid var(--border-color); max-height: 90vh; overflow-y: auto; overflow-x: hidden; }
      .modal-content.medium { max-width: 500px; }
      .modal-content.large { max-width: 650px; }
      .modal-content.xl { max-width: 800px; }
      .modal-content.modal-edit-wide { max-width: 1050px; width: 95%; }

      /* Layout em 2 Colunas para o Modal de Edição */
      .modal-edit-grid { display: grid; grid-template-columns: 1fr; gap: 20px; }
      @media (min-width: 768px) {
        .modal-edit-grid { grid-template-columns: 1.05fr 1.15fr; gap: 25px; align-items: start; }
        .modal-edit-col-right { display: flex; flex-direction: column; height: 100%; }
        .modal-edit-col-right .editor-area { min-height: 330px; max-height: 480px; }
        .modal-edit-col-right #edit-descricao-source { min-height: 330px; }
      }
      
      .modal-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; }
      .modal-header h2 { margin: 0; font-family: 'Bebas Neue', sans-serif; font-size: 2em; letter-spacing: 1px;}
      .modal-header-actions { display: flex; align-items: center; gap: 12px; }
      .btn-save-header { background: none; border: none; font-size: 1.45em; color: var(--accent-color); cursor: pointer; transition: transform 0.2s, opacity 0.2s; padding: 4px; display: flex; align-items: center; justify-content: center; }
      .btn-save-header:hover { transform: scale(1.15); opacity: 0.85; }
      .btn-save-header:disabled { opacity: 0.4; cursor: not-allowed; }
      .close-modal-x { background: none; border: none; font-size: 1.5em; color: var(--secondary-text); cursor: pointer; transition: color 0.2s; padding: 0; line-height: 1; }
      .close-modal-x:hover { color: var(--danger-color); }
      .form-group { margin-bottom: 15px; }
      .form-group label { display: block; margin-bottom: 5px; font-size: 0.9em; font-weight: 500; }
      .form-group input, .form-group select { width: 100%; padding: 10px; border: 1px solid var(--border-color); border-radius: 6px; background: var(--background-color); color: var(--primary-text); box-sizing: border-box; }
      .modal-actions { display: flex; justify-content: flex-end; gap: 10px; margin-top: 20px; }
      /* Bloco de Upload de Imagem em 2 Lados (Esquerda: Botão / Direita: Quadrado) */
      .image-upload-group {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 15px;
        background: var(--background-color);
        padding: 12px 14px;
        border-radius: 8px;
        border: 1px solid var(--border-color);
        margin-top: 10px;
      }
      .image-upload-left {
        display: flex;
        flex-direction: column;
        gap: 8px;
        flex: 1;
      }
      .image-upload-left label {
        margin: 0;
        font-size: 0.95em;
        font-weight: 600;
        color: var(--primary-text);
      }
      .image-upload-left input[type="file"] {
        padding: 6px 8px;
        font-size: 0.85em;
      }
      .image-upload-right {
        width: 85px;
        height: 85px;
        min-width: 85px;
        min-height: 85px;
        border-radius: 8px;
        border: 1px dashed var(--border-color);
        background: var(--surface-color);
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
      }
      #image-preview {
        width: 100%;
        height: 100%;
        object-fit: contain;
        display: none;
        background: #ffffff;
        border: none;
        margin: 0;
      }
      body.dark-theme #image-preview {
        background: #222222;
      }
      
      #loading-spinner, #save-spinner { display: none; color: var(--accent-color); font-size: 1.2em; text-align: center; margin: 10px 0;}

      /* TOOLBAR DO EDITOR DE DESCRIÇÃO (ESTILO ERP BLING) */
      .editor-toolbar { display: flex; gap: 4px; padding: 6px 8px; background: var(--background-color); border: 1px solid var(--border-color); border-bottom: none; border-radius: 6px 6px 0 0; flex-wrap: wrap; align-items: center; }
      .editor-btn { background: var(--surface-color); border: 1px solid var(--border-color); color: var(--primary-text); padding: 5px 9px; font-size: 0.88em; border-radius: 4px; cursor: pointer; transition: all 0.2s; }
      .editor-btn:hover { background: var(--accent-color); color: #fff; border-color: var(--accent-color); }
      .editor-btn.active { background: var(--accent-color); color: #fff; }
      .editor-area { min-height: 120px; max-height: 250px; overflow-y: auto; padding: 10px; border: 1px solid var(--border-color); border-radius: 0 0 6px 6px; background: var(--surface-color); color: var(--primary-text); font-size: 0.95em; line-height: 1.5; outline: none; }
      .editor-area:focus { border-color: var(--accent-color); box-shadow: 0 0 5px rgba(212, 175, 55, 0.3); }

      /* MODAL FULLSCREEN DO PRODUTO (CLIENTE) */
      .modal-fullscreen-overlay { display: none; position: fixed; top: 0; left: 0; width: 100vw; height: 100vh; background: var(--background-color); z-index: 3000; overflow-y: auto; flex-direction: column; }
      .detail-header { display: flex; justify-content: space-between; align-items: center; padding: 16px 24px; border-bottom: 1px solid var(--border-color); background: var(--header-bg); position: sticky; top: 0; z-index: 10; }
      .detail-header h2 { margin: 0; font-family: 'Bebas Neue', sans-serif; font-size: 2.2em; letter-spacing: 1px; }
      .detail-container { max-width: 1300px; width: 100%; margin: 0 auto; padding: 25px 20px; box-sizing: border-box; display: grid; grid-template-columns: 1fr; gap: 30px; }
      .detail-image-box { width: 100%; aspect-ratio: 1 / 1; max-height: 520px; background: #ffffff; border-radius: 12px; border: 1px solid var(--border-color); display: flex; align-items: center; justify-content: center; overflow: hidden; }
      body.dark-theme .detail-image-box { background: #222222; }
      .detail-image-box img { width: 100%; height: 100%; object-fit: contain; }
      .detail-content { display: flex; flex-direction: column; gap: 15px; }
      .detail-sku { font-size: 0.9em; color: var(--secondary-text); font-weight: 500; }
      .detail-title { margin: 0; font-size: 1.7em; font-weight: 700; line-height: 1.25; }
      .detail-category { font-size: 0.95em; color: var(--secondary-text); }
      .detail-price { font-size: 2em; font-weight: bold; color: var(--accent-color); margin: 5px 0 10px 0; }
      
      /* Seletor de Variações em Chips */
      .variations-selector-box { display: flex; flex-direction: column; gap: 10px; margin: 15px 0; padding: 15px; border-radius: 8px; background: var(--surface-color); border: 1px solid var(--border-color); }
      .variations-selector-box label { font-size: 0.95em; font-weight: 700; text-transform: uppercase; letter-spacing: 0.5px; }
      .variations-chips { display: flex; flex-wrap: wrap; gap: 10px; }
      .variation-chip { padding: 9px 15px; border-radius: 6px; border: 1px solid var(--border-color); background: var(--background-color); color: var(--primary-text); font-size: 0.92em; font-weight: 500; cursor: pointer; transition: all 0.2s; display: flex; align-items: center; gap: 8px; }
      .variation-chip:hover { border-color: var(--accent-color); }
      .variation-chip.active { border-color: var(--accent-color); background: var(--accent-color); color: #ffffff; font-weight: bold; }
      
      /* Abas e visualizador de Descrição */
      .detail-tabs { display: flex; gap: 15px; border-bottom: 2px solid var(--border-color); margin-top: 15px; }
      .tab-btn { background: none; border: none; padding: 10px 15px; font-size: 1.05em; font-weight: 600; cursor: pointer; color: var(--secondary-text); border-bottom: 3px solid transparent; transition: all 0.2s; }
      .tab-btn.active { color: var(--accent-color); border-bottom-color: var(--accent-color); }
      .detail-tab-body { padding: 18px 0; line-height: 1.65; font-size: 1em; color: var(--primary-text); }
      .detail-tab-body ul, .detail-tab-body ol { padding-left: 25px; margin: 10px 0; }

      .cat-tree-list { list-style: none; padding: 0; margin: 0; }
      .cat-tree-item { background: var(--background-color); border: 1px solid var(--border-color); margin-bottom: 8px; border-radius: 6px; padding: 10px; }
      .cat-tree-header { display: flex; justify-content: space-between; align-items: center; font-weight: bold; }
      .subcat-list { list-style: none; padding-left: 15px; margin-top: 10px; border-left: 2px solid var(--border-color); }
      .subcat-item { display: flex; justify-content: space-between; align-items: center; padding: 5px 0; font-size: 0.9em; color: var(--secondary-text); }
      .btn-small { background: none; border: none; cursor: pointer; color: var(--secondary-text); font-size: 0.9em; transition: color 0.2s;}
      .btn-small:hover { color: var(--accent-color); }
      .btn-small.del:hover { color: var(--danger-color); }

      .progress-bar { width: 100%; background-color: var(--background-color); border-radius: 6px; overflow: hidden; margin: 15px 0; border: 1px solid var(--border-color); }
      .progress-fill { height: 20px; background-color: var(--accent-color); width: 0%; transition: width 0.3s; }

      /* =======================================
         AJUSTES ESPECÍFICOS PARA CELULAR (MOBILE)
         ======================================= */
      @media (max-width: 700px) {
          .modal-content { padding: 15px; } 
          .admin-table th, .admin-table td { padding: 10px 8px; font-size: 0.88em; }
          .admin-table img { width: 35px; height: 35px; }
          .table-logs th, .table-logs td { padding: 8px 5px; font-size: 0.82em; }
          .detail-header { padding: 12px 16px; }
          .detail-header h2 { font-size: 1.7em; }
          .detail-container { padding: 15px; gap: 20px; }
          .detail-title { font-size: 1.35em; }
          .detail-price { font-size: 1.6em; }
      }

      @media (min-width: 701px) {
        .container { padding: 20px; }
        .sticky-header { padding: 0; }
        .header-top { flex-direction: row; padding: 15px 20px; }
        .brand h1 { font-size: 2.8em; }
        .header-actions { width: auto; }
        .mobile-filter-btn { display: none; }
        .filters { flex-direction: row; padding: 0 20px 20px 20px; gap: 15px; }
        .filters input, .filters select { padding: 12px 15px; font-size: 1em; flex: 1 1 200px; }
        .filters input[type="search"] { flex-grow: 2; }
        .filters.recolhido { display: flex; } 
        .product-grid { grid-template-columns: repeat(3, 1fr); gap: 25px; }
        .admin-controls { flex-wrap: nowrap; width: auto; }
        #admin-search-input { width: auto; min-width: 350px; flex-grow: 1; }
        .admin-controls select { flex-grow: 0; }
        .btn-primary { flex-grow: 0; }
        .dropdown-content { left: auto; right: 0; } 
        .modal-content.large { max-width: 650px; }
        .detail-container { grid-template-columns: 1fr 1fr; align-items: start; gap: 40px; padding: 40px 20px; }
      }
      @media (min-width: 1201px) { .product-grid { grid-template-columns: repeat(4, 1fr); } }
    </style>
</head>
<body>
  
  <div class="sticky-header">
    <div class="header-top">
      <div class="brand">
          <h1>CATÁLOGO REI DO FITNESS</h1>
      </div>
      <div class="header-actions">
          <button id="mobile-filter-toggle" class="mobile-filter-btn"><i class="fas fa-eye-slash"></i> Ocultar Filtros</button>
          <button id="tab-catalogo" class="admin-nav-btn" title="Catálogo de Produtos" style="display: none;" onclick="alternar_aba('catalogo')"><i class="fas fa-eye"></i></button>
          <button id="tab-config" class="admin-nav-btn" title="Configurações" style="display: none;" onclick="alternar_aba('config')"><i class="fas fa-cog"></i></button>
          <button id="theme-toggle" class="theme-btn" title="Alternar Modo Escuro/Claro"><i class="fas fa-moon"></i></button>
          <button id="admin-login-btn" class="admin-btn" title="Área Administrativa"><i class="fas fa-cog"></i></button>
      </div>
    </div>
    
    <div class="filters" id="filters-container">
      <input type="search" id="search-input" placeholder="Pesquisar por nome ou código (SKU)...">
      <select id="category-filter"><option value="all">Todas as Categorias</option></select>
      <select id="subcategory-filter" style="display: none;"><option value="all">Todas as Sub-Categorias</option></select>
    </div>
  </div>

  <!-- ABAS EXCLUSIVAS DO ADMINISTRADOR REMOVIDAS DAQUI E MOVIDAS PARA O CABEÇALHO -->

  <div class="container">
    <div id="loading">Carregando produtos...</div>
    <div id="public-view"><div id="product-grid" class="product-grid"></div></div>

    <!-- VISÃO ADMIN -->
    <div id="admin-view">
        <div class="admin-header">
            <h2>Gerenciar Catálogo</h2>
            
            <div class="admin-controls">
                <input type="search" id="admin-search-input" placeholder="Buscar Produto ou SKU...">
                
                <div class="dropdown">
                    <button class="btn-secondary" id="tools-toggle-btn" title="Ferramentas">
                        <i class="fas fa-wrench"></i>
                    </button>
                    <div class="dropdown-content min-w-200" id="tools-dropdown">
                        <button onclick="openLogsModal()"><i class="fas fa-history"></i> Registro de Atividades</button>
                        <button onclick="openConfigCatModal()"><i class="fas fa-sitemap"></i> Configurar Categorias</button>
                        <button onclick="open_gas_url_modal()"><i class="fas fa-link"></i> URL - GAS</button>
                        <hr style="border-color: var(--border-color); width: 100%;">
                        <button onclick="exportData()"><i class="fas fa-download"></i> Backup (Exportar JSON)</button>
                        <button onclick="document.getElementById('import-file').click()"><i class="fas fa-upload"></i> Restaurar (Importar JSON)</button>
                        <hr style="border-color: var(--border-color); width: 100%;">
                        <button onclick="startMigration()" style="color: var(--accent-color); font-weight:bold;"><i class="fas fa-cloud-upload-alt"></i> Sincronizar Fotos R2</button>
                    </div>
                    <input type="file" id="import-file" accept=".json" style="display: none;" onchange="importData(event)">
                </div>

                <div class="dropdown">
                    <button class="btn-secondary" id="col-toggle-btn" title="Ocultar Colunas">
                        <i class="fas fa-columns"></i>
                    </button>
                    <div class="dropdown-content" id="col-dropdown">
                        <label><input type="checkbox" checked onchange="toggleColumn('pai', this.checked)"> Base / Pai</label>
                        <label><input type="checkbox" checked onchange="toggleColumn('prod', this.checked)"> Nome (Produto)</label>
                        <label><input type="checkbox" checked onchange="toggleColumn('cat', this.checked)"> Categoria</label>
                        <label><input type="checkbox" checked onchange="toggleColumn('sub', this.checked)"> Sub-Categoria</label>
                        <label><input type="checkbox" checked onchange="toggleColumn('val', this.checked)"> Valor</label>
                    </div>
                </div>

                <select id="admin-sort-select">
                    <option value="sku">Ordenar: SKU</option>
                    <option value="name">Ordenar: A-Z</option>
                </select>
                <button class="btn-primary" onclick="openEditModal()">+ Novo Produto</button>
            </div>
        </div>
        
        <div class="table-responsive" id="table-wrapper">
            <table class="admin-table">
                <thead>
                    <tr>
                        <th>Img</th><th>SKU</th><th class="col-pai">Base / Pai</th><th class="col-prod">Nome (Produto)</th>
                        <th class="col-cat">Categoria</th><th class="col-sub">Sub-Categ.</th><th class="col-val">Valor</th>
                        <th class="col-acoes"><i class="fas fa-bolt"></i></th> 
                    </tr>
                </thead>
                <tbody id="admin-table-body"></tbody>
            </table>
        </div>
    </div>
  </div>

  <!-- MODAL LOGS -->
  <div id="logs-modal" class="modal-overlay">
      <div class="modal-content xl">
          <div class="modal-header">
              <h2>Registro de Atividades</h2>
              <button class="close-modal-x" onclick="closeModal('logs-modal')" title="Fechar"><i class="fas fa-times"></i></button>
          </div>
          <div class="form-group">
              <input type="text" id="log-user-filter" placeholder="🔍 Filtrar por nome do vendedor/usuário..." oninput="renderLogsTable()">
          </div>
          <div class="table-responsive" style="max-height: 400px; overflow-y: auto;">
              <table class="admin-table table-logs">
                  <thead>
                      <tr><th>Data e Hora</th><th>Usuário</th><th>Ação Registrada</th></tr>
                  </thead>
                  <tbody id="logs-table-body"></tbody>
              </table>
          </div>
      </div>
  </div>

  <!-- MODAL URL GAS -->
  <div id="gas-url-modal" class="modal-overlay">
      <div class="modal-content">
          <div class="modal-header">
              <h2>Configurar URL do GAS</h2>
              <button class="close-modal-x" onclick="closeModal('gas-url-modal')" title="Fechar"><i class="fas fa-times"></i></button>
          </div>
          <div class="form-group">
              <label>URL do Web App do Google Apps Script</label>
              <input type="text" id="gas-url-input" placeholder="https://script.google.com/macros/s/.../exec">
          </div>
          <div id="gas-save-spinner" style="display: none; color: var(--accent-color); font-size: 1.2em; text-align: center; margin: 10px 0;">
              <i class="fas fa-circle-notch fa-spin"></i> Salvando no KV...
          </div>
          <div class="modal-actions">
              <button class="btn-secondary" onclick="closeModal('gas-url-modal')">Cancelar</button>
              <button class="btn-primary" onclick="salvar_url_gas()">Salvar</button>
          </div>
      </div>
  </div>

  <!-- MODAL MIGRAÇÃO -->
  <div id="migration-modal" class="modal-overlay">
      <div class="modal-content">
          <div class="modal-header"><h2>Migração para R2</h2></div>
          <p id="migration-text">Analisando fotos antigas do Google Drive...</p>
          <div class="progress-bar"><div class="progress-fill" id="migration-fill"></div></div>
          <p id="migration-status" style="text-align:center; font-weight:bold;"></p>
      </div>
  </div>

  <!-- MODAL LOGIN -->
  <div id="login-modal" class="modal-overlay">
      <div class="modal-content">
          <div class="modal-header">
              <h2>Acesso Restrito</h2>
              <button class="close-modal-x" onclick="closeModal('login-modal')" title="Fechar (ESC)"><i class="fas fa-times"></i></button>
          </div>
          <form id="login-form" onsubmit="event.preventDefault(); attemptLogin();">
              <div class="form-group"><label>Usuário</label><input type="text" id="login-user" autocomplete="username"></div>
              <div class="form-group"><label>Senha</label><input type="password" id="login-pass" autocomplete="current-password"></div>
              <div id="loading-spinner"><i class="fas fa-spinner fa-spin"></i> Validando...</div>
              <div class="modal-actions" style="justify-content: center; margin-top: 22px;">
                  <button type="submit" class="btn-primary" style="min-width: 170px; flex-grow: 0;">Entrar</button>
              </div>
          </form>
      </div>
  </div>

  <!-- MODAL CAT -->
  <div id="config-cat-modal" class="modal-overlay">
      <div class="modal-content medium">
          <div class="modal-header">
              <h2>Configurar Categorias</h2>
              <button class="close-modal-x" onclick="closeModal('config-cat-modal')" title="Fechar"><i class="fas fa-times"></i></button>
          </div>
          <div style="margin-bottom: 15px;"><button class="btn-secondary" onclick="addCategoryUI()" style="width: 100%;"><i class="fas fa-plus"></i> Nova Categoria Mãe</button></div>
          <div style="max-height: 400px; overflow-y: auto; padding-right: 5px;" id="cat-tree-container"></div>
          <div class="modal-actions"><button class="btn-primary" onclick="closeModal('config-cat-modal')">Concluir</button></div>
      </div>
  </div>

  <!-- MODAL EDIÇÃO -->
  <div id="edit-modal" class="modal-overlay">
      <div class="modal-content modal-edit-wide">
          <div class="modal-header">
              <h2 id="modal-title">Editar Produto</h2>
              <div class="modal-header-actions">
                  <div id="save-spinner" style="display: none; margin: 0; font-size: 1.1em;"><i class="fas fa-circle-notch fa-spin"></i></div>
                  <button class="btn-save-header" id="btn-salvar-produto" onclick="saveProduct()" title="Salvar Alterações"><i class="fas fa-save"></i></button>
                  <button class="close-modal-x" onclick="closeModal('edit-modal')" title="Fechar"><i class="fas fa-times"></i></button>
              </div>
          </div>
          
          <div class="modal-edit-grid">
              <!-- COLUNA ESQUERDA: DADOS PRINCIPAIS DO PRODUTO -->
              <div class="modal-edit-col-left">
                  <div style="display: flex; gap: 15px;">
                      <div class="form-group" style="flex: 1;">
                          <label>Tipo do Produto</label>
                          <select id="edit-tipo" onchange="alternar_tipo_produto_modal()">
                              <option value="base">Produto Base / Principal</option>
                              <option value="variacao">Variação de Produto</option>
                          </select>
                      </div>
                      <div class="form-group" id="group-parent-sku" style="flex: 1; display: none;">
                          <label>Produto Pai (Vincular a)</label>
                          <input type="text" id="parent-search-input" placeholder="🔍 Filtrar produto pai por nome ou SKU..." oninput="filtrar_produtos_pai_select()" style="margin-bottom: 6px;">
                          <select id="edit-parent-sku" onchange="ao_mudar_produto_pai_selecionado()"></select>
                      </div>
                  </div>

                  <div style="display: flex; gap: 15px;">
                      <div class="form-group" style="flex: 1;"><label>SKU (Código único)</label><input type="text" id="edit-sku"></div>
                      <div class="form-group" style="flex: 1; display: none;" id="group-nome-variacao"><label>Nome da Variação (Ex: 10kg, Preto)</label><input type="text" id="edit-nome-variacao" placeholder="Ex: 5kg, Vermelho, etc."></div>
                  </div>

                  <div class="form-group"><label>Nome do Produto (Exibição Geral)</label><input type="text" id="edit-nome"></div>

                  <div style="display: flex; gap: 15px;">
                      <div class="form-group" style="flex: 1;"><label>Categoria</label><select id="edit-categoria" onchange="handleModalCatChange()"></select></div>
                      <div class="form-group" style="flex: 1;"><label>Sub-Categoria</label><select id="edit-subcategoria" onchange="handleModalSubChange()"></select></div>
                  </div>

                  <div class="form-group"><label>Preço</label><input type="text" id="edit-valor" placeholder="Ex: 159,90"></div>

                  <div class="form-group image-upload-group">
                      <div class="image-upload-left">
                          <label>Imagem</label>
                          <input type="file" id="edit-file" accept="image/*" onchange="previewImage(event)">
                          <input type="hidden" id="edit-img-url">
                      </div>
                      <div class="image-upload-right">
                          <img id="image-preview" src="" alt="Preview">
                      </div>
                  </div>
              </div>

              <!-- COLUNA DIREITA: DESCRIÇÃO DETALHADA DO PRODUTO -->
              <div class="modal-edit-col-right">
                  <div class="form-group" style="height: 100%; display: flex; flex-direction: column;">
                      <label>Descrição do Produto (Estilo Bling ERP)</label>
                      <div class="editor-toolbar" id="editor-toolbar-container">
                          <button type="button" class="editor-btn" onclick="formatar_editor_descricao('bold')" title="Negrito"><b>B</b></button>
                          <button type="button" class="editor-btn" onclick="formatar_editor_descricao('italic')" title="Itálico"><i>I</i></button>
                          <button type="button" class="editor-btn" onclick="formatar_editor_descricao('underline')" title="Sublinhado"><u>U</u></button>
                          <button type="button" class="editor-btn" onclick="formatar_editor_descricao('insertUnorderedList')" title="Lista com Marcadores"><i class="fas fa-list-ul"></i></button>
                          <button type="button" class="editor-btn" onclick="formatar_editor_descricao('insertOrderedList')" title="Lista Numerada"><i class="fas fa-list-ol"></i></button>
                          <button type="button" class="editor-btn" onclick="formatar_editor_descricao('removeFormat')" title="Limpar Formatação"><i class="fas fa-eraser"></i></button>
                          <button type="button" class="editor-btn" id="btn-toggle-source" onclick="alternar_codigo_fonte_editor()" title="Código Fonte HTML" style="margin-left: auto;"><i class="fas fa-code"></i> Código Fonte</button>
                      </div>
                      <div class="editor-area" id="edit-descricao-editor" contenteditable="true" placeholder="Digite a descrição detalhada do produto..." style="flex: 1;"></div>
                      <textarea id="edit-descricao-source" class="editor-area" style="display: none; width: 100%; flex: 1; box-sizing: border-box; font-family: monospace;"></textarea>
                      <small id="desc-herdada-aviso" style="display: none; color: var(--accent-color); font-weight: 500; margin-top: 6px;">ℹ️ Esta é uma variação: a descrição é herdada automaticamente do produto pai.</small>
                  </div>
              </div>
          </div>
      </div>
  </div>

  <!-- MODAL DE DETALHES DO PRODUTO EM TELA CHEIA (CLIENTE) -->
  <div id="product-detail-modal" class="modal-fullscreen-overlay">
      <div class="detail-header">
          <h2 id="detail-header-brand">REI DO FITNESS</h2>
          <button class="close-modal-x" onclick="fechar_modal_detalhes()" title="Fechar (ESC)" style="font-size: 2em;"><i class="fas fa-times"></i></button>
      </div>
      <div class="detail-container">
          <div class="detail-image-box">
              <img id="detail-img" src="" alt="Foto do Produto" onerror="this.src='https://via.placeholder.com/600x600.png/eeeeee/666666?text=Sem+Foto'">
          </div>
          <div class="detail-content">
              <div class="detail-sku" id="detail-sku">SKU: -</div>
              <h1 class="detail-title" id="detail-title">Nome do Produto</h1>
              <div class="detail-category" id="detail-cat">Categoria: Geral</div>
              <div class="detail-price" id="detail-price">R$ 0,00</div>
              
              <div id="detail-variations-box" class="variations-selector-box" style="display: none;">
                  <label><i class="fas fa-layer-group"></i> Selecione a Opção / Variação:</label>
                  <div class="variations-chips" id="detail-variations-container"></div>
              </div>

              <div class="detail-tabs">
                  <button class="tab-btn active" id="tab-btn-desc" onclick="alternar_aba_detalhes('desc')"><i class="fas fa-align-left"></i> Descrição Completa</button>
              </div>
              <div class="detail-tab-body" id="detail-tab-content">
                  <div id="detail-desc-text">Nenhuma descrição cadastrada para este produto.</div>
              </div>
          </div>
      </div>
  </div>

  <script>
    const CF_WORKER_URL = "https://catalogo.reidofitness-rp.workers.dev";
    const R2_PUBLIC_URL = "https://pub-bf18dfafed4e42dfa523fffbb943b180.r2.dev"; 
    
    let allProducts = [];
    let isAdmin = false;
    let currentUser = ""; 
    let GAS_WEBAPP_URL = ""; 

    let catTree = {
        "Acessórios de Treino": [], "Aparelhos": [], "Aparelhos com Bateria de Peso": [], "Bancos": [],
        "Barras": ["Barra Emborrachada", "Barra Hexagonal", "Barra Pump"],
        "Funcional e Crossfit": ["Caixa de Salto", "Colchonete", "Corda Naval", "Corda Naval Revestida"],
        "Organizadores": ["Colchonete", "Corda Naval", "Wall Ball"],
        "Pesos": ["Anilha de Ferro", "Anilha Emborrachada", "Caneleira de Peso", "Halter de Rosca", "Halter Emborrachado", "Kettlebell Emborrachado", "Power Bag", "Wall Ball"],
        "Power Racks": ["Power Rack", "Power Rack Gorila"], "Puxadores": ["Puxador Anatômico", "Puxadores Nylon"], "Terminais e Peças": []
    };

    const publicView = document.getElementById('public-view');
    const adminView = document.getElementById('admin-view');
    const filtersContainer = document.getElementById('filters-container');
    const loadingDiv = document.getElementById('loading');
    
    function formatPriceForDisplay(val) {
        if (!val) return '';
        let s = String(val).trim();
        if (s.toUpperCase().startsWith('R$')) return s;
        return `R$ ${s}`;
    }
    function cleanPriceForEdit(val) {
        if (!val) return '';
        return String(val).replace(/^R\$\s*/i, '').trim();
    }

    function converter_preco_numero(val) {
        if (!val) return 0;
        let s = String(val).replace(/^R\$\s*/i, '').trim();
        s = s.replace(/\./g, '').replace(',', '.');
        let n = parseFloat(s);
        return isNaN(n) ? 0 : n;
    }

    function formatar_numero_moeda(num) {
        return num.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
    }

    function obter_variacoes_do_produto(sku_pai) {
        return allProducts.filter(p => p.tipo_produto === 'variacao' && String(p.sku_pai) === String(sku_pai));
    }

    function calcular_faixa_preco(produto_base, lista_variacoes) {
        if (!lista_variacoes || lista_variacoes.length === 0) {
            return produto_base.valor ? formatPriceForDisplay(produto_base.valor) : '';
        }

        let valores = [];
        if (produto_base.valor) {
            let n_base = converter_preco_numero(produto_base.valor);
            if (n_base > 0) valores.push(n_base);
        }

        lista_variacoes.forEach(v => {
            if (v.valor) {
                let n_var = converter_preco_numero(v.valor);
                if (n_var > 0) valores.push(n_var);
            }
        });

        if (valores.length === 0) return '';
        let min = Math.min(...valores);
        let max = Math.max(...valores);

        if (min === max) {
            return formatar_numero_moeda(min);
        }
        return `${formatar_numero_moeda(min)} a ${formatar_numero_moeda(max)}`;
    }

    // Fechar modais ao pressionar tecla ESC
    document.addEventListener('keydown', (event) => {
        if (event.key === 'Escape' || event.key === 'Esc') {
            fechar_modal_detalhes();
            fechar_todos_modais();
        }
    });

    if (localStorage.getItem('tema_reidofitness') === 'dark') {
        document.documentElement.classList.add('dark-theme');
        document.body.classList.add('dark-theme');
        document.getElementById('theme-toggle').innerHTML = '<i class="fas fa-sun"></i>';
    }

    document.getElementById('theme-toggle').addEventListener('click', () => {
        document.documentElement.classList.toggle('dark-theme');
        document.body.classList.toggle('dark-theme');
        const isDark = document.body.classList.contains('dark-theme');
        document.getElementById('theme-toggle').innerHTML = isDark ? '<i class="fas fa-sun"></i>' : '<i class="fas fa-moon"></i>';
        localStorage.setItem('tema_reidofitness', isDark ? 'dark' : 'light');
    });

    document.getElementById('mobile-filter-toggle').addEventListener('click', () => {
        filtersContainer.classList.toggle('recolhido');
        document.getElementById('mobile-filter-toggle').innerHTML = filtersContainer.classList.contains('recolhido') ? '<i class="fas fa-filter"></i> Mostrar Filtros' : '<i class="fas fa-eye-slash"></i> Ocultar Filtros';
    });

    document.addEventListener('DOMContentLoaded', () => {
      // Busca a URL do GAS salva no KV antes de inicializar o catálogo
      buscar_url_gas();

      fetch(`${CF_WORKER_URL}?type=catalogo`)
        .then(res => res.json())
        .then(products => { 
          initializeCatalog(products); 
          // Verifica se o administrador possui sessão ativa salva no computador
          if (localStorage.getItem('admin_logged_in') === 'true') {
            currentUser = localStorage.getItem('admin_user') || "Admin";
            ativarModoAdmin();
          }
        })
        .catch(err => { console.error("Erro", err); loadingDiv.textContent = "Erro ao carregar catálogo."; });
    });

    function initializeCatalog(products) {
      allProducts = products;
      loadingDiv.style.display = 'none';
      populateFilters();
      displayProducts(allProducts);
      if(isAdmin) renderAdminTable();
      setupPublicFilters();
    }

    // ==========================================
    // PÚBLICO
    // ==========================================
    const categoryFilter = document.getElementById('category-filter');
    const subcategoryFilter = document.getElementById('subcategory-filter');
    const searchInput = document.getElementById('search-input');

    function populateFilters() {
      const categories = [...new Set(allProducts.map(p => p.categoria).filter(Boolean))].sort();
      categoryFilter.innerHTML = '<option value="all">Todas as Categorias</option>';
      categories.forEach(c => categoryFilter.add(new Option(c, c)));
    }

    function setupPublicFilters() {
      searchInput.addEventListener('input', handleFilterChange);
      categoryFilter.addEventListener('change', handleFilterChange);
      subcategoryFilter.addEventListener('change', handleFilterChange);
    }

    function handleFilterChange() {
      if(isAdmin) return;
      const term = searchInput.value.toLowerCase().trim();
      const cat = categoryFilter.value;
      const sub = subcategoryFilter.value;
      let filtered = allProducts;

      if (cat !== 'all') {
        filtered = filtered.filter(p => p.categoria === cat);
        const subs = [...new Set(filtered.map(p => p.subCategoria).filter(Boolean))].sort();
        subcategoryFilter.innerHTML = '<option value="all">Todas as Sub-Categorias</option>';
        if(subs.length) { subs.forEach(s => subcategoryFilter.add(new Option(s, s))); subcategoryFilter.style.display = 'inline-block'; } 
        else { subcategoryFilter.style.display = 'none'; }
      } else { subcategoryFilter.style.display = 'none'; }

      if (subcategoryFilter.style.display !== 'none' && sub !== 'all') filtered = filtered.filter(p => p.subCategoria === sub);
      if (term) filtered = filtered.filter(p => (p.produto && p.produto.toLowerCase().includes(term)) || String(p.sku).toLowerCase().includes(term));
      
      displayProducts(filtered);
    }

    function displayProducts(products) {
      const grid = document.getElementById('product-grid');
      grid.innerHTML = '';
      
      // No catálogo público são exibidos apenas os produtos base / principais
      const produtos_principais = products.filter(p => p.tipo_produto !== 'variacao');
      if (!produtos_principais.length) return grid.innerHTML = '<p style="grid-column: 1/-1; text-align:center;">Nenhum produto encontrado.</p>';
      
      produtos_principais.forEach(p => {
        let categoriaDisplay = `Categoria: ${p.categoria || 'Geral'}`;
        if(p.subCategoria && p.subCategoria !== '') { categoriaDisplay += ` / ${p.subCategoria}`; }
        const img = p.imagem || 'https://via.placeholder.com/400x400.png/eeeeee/666666?text=Sem+Foto';
        
        // Verifica variações vinculadas a este produto pai
        const variacoes = obter_variacoes_do_produto(p.sku);
        const preco_faixa = calcular_faixa_preco(p, variacoes);
        const priceHtml = preco_faixa ? `<p class="price">${preco_faixa}</p>` : '';
        const badgeVariacoesHtml = variacoes.length > 0 ? `<div class="badge-variacoes"><i class="fas fa-layer-group"></i> ${variacoes.length} Opções</div>` : '';

        grid.insertAdjacentHTML('beforeend', `
          <div class="product-card" onclick="abrir_modal_detalhes('${p.sku}')" title="Clique para ver detalhes e opções">
            <div class="product-image-container"><img class="product-image" src="${img}" loading="lazy" onerror="this.src='https://via.placeholder.com/400x400.png/eeeeee/666666?text=Erro'"></div>
            <div class="product-info">
              ${badgeVariacoesHtml}
              <h3>${p.produto || 'Sem nome'}</h3><p class="category">${categoriaDisplay}</p><p class="sku">SKU: ${p.sku}</p>${priceHtml}
            </div>
          </div>
        `);
      });
    }

    // ==========================================
    // MODAL DE DETALHES FULLSCREEN (CLIENTE)
    // ==========================================
    let produto_detalhe_atual = null;

    function abrir_modal_detalhes(sku) {
        const prod = allProducts.find(p => String(p.sku) === String(sku));
        if (!prod) return;
        
        produto_detalhe_atual = prod;
        const modal = document.getElementById('product-detail-modal');
        const img = document.getElementById('detail-img');
        const sku_elem = document.getElementById('detail-sku');
        const title_elem = document.getElementById('detail-title');
        const cat_elem = document.getElementById('detail-cat');
        const price_elem = document.getElementById('detail-price');
        const var_box = document.getElementById('detail-variations-box');
        const var_container = document.getElementById('detail-variations-container');
        const desc_elem = document.getElementById('detail-desc-text');

        let categoriaDisplay = `Categoria: ${prod.categoria || 'Geral'}`;
        if (prod.subCategoria) categoriaDisplay += ` / ${prod.subCategoria}`;

        img.src = prod.imagem || 'https://via.placeholder.com/600x600.png/eeeeee/666666?text=Sem+Foto';
        sku_elem.textContent = `SKU: ${prod.sku}`;
        title_elem.textContent = prod.produto || 'Produto sem nome';
        cat_elem.textContent = categoriaDisplay;

        const variacoes = obter_variacoes_do_produto(prod.sku);

        if (variacoes.length > 0) {
            price_elem.textContent = calcular_faixa_preco(prod, variacoes);
            var_box.style.display = 'flex';
            var_container.innerHTML = '';

            // Botão da opção base / inicial
            const chip_base = document.createElement('button');
            chip_base.className = 'variation-chip active';
            chip_base.textContent = 'Padrão';
            chip_base.onclick = () => selecionar_variacao_modal(null);
            var_container.appendChild(chip_base);

            // Botões de cada variação filha
            variacoes.forEach(v => {
                const chip = document.createElement('button');
                chip.className = 'variation-chip';
                chip.textContent = v.nome_variacao || v.produto || `Opção SKU ${v.sku}`;
                chip.onclick = () => selecionar_variacao_modal(v.sku);
                var_container.appendChild(chip);
            });
        } else {
            price_elem.textContent = prod.valor ? formatPriceForDisplay(prod.valor) : 'Sob Consulta';
            var_box.style.display = 'none';
        }

        // Descrição formatada
        if (prod.descricao && prod.descricao.trim() !== '') {
            desc_elem.innerHTML = prod.descricao;
        } else {
            desc_elem.innerHTML = '<p style="color: var(--secondary-text); font-style: italic;">Nenhuma descrição cadastrada para este produto.</p>';
        }

        modal.style.display = 'flex';
        document.body.style.overflow = 'hidden'; // Evita rolagem da página ao fundo
    }

    function selecionar_variacao_modal(sku_var) {
        if (!produto_detalhe_atual) return;
        
        const chips = document.querySelectorAll('.variation-chip');
        chips.forEach(c => c.classList.remove('active'));

        const img = document.getElementById('detail-img');
        const sku_elem = document.getElementById('detail-sku');
        const price_elem = document.getElementById('detail-price');

        if (!sku_var) {
            // Volta para o produto base
            chips[0].classList.add('active');
            img.src = produto_detalhe_atual.imagem || 'https://via.placeholder.com/600x600.png/eeeeee/666666?text=Sem+Foto';
            sku_elem.textContent = `SKU: ${produto_detalhe_atual.sku}`;
            const vars = obter_variacoes_do_produto(produto_detalhe_atual.sku);
            price_elem.textContent = calcular_faixa_preco(produto_detalhe_atual, vars);
        } else {
            const variacao = allProducts.find(p => String(p.sku) === String(sku_var));
            if (!variacao) return;

            // Marca o chip clicado como ativo
            chips.forEach(c => {
                if (c.textContent === (variacao.nome_variacao || variacao.produto || `Opção SKU ${variacao.sku}`)) {
                    c.classList.add('active');
                }
            });

            if (variacao.imagem) {
                img.src = variacao.imagem;
            } else {
                img.src = produto_detalhe_atual.imagem || 'https://via.placeholder.com/600x600.png/eeeeee/666666?text=Sem+Foto';
            }

            sku_elem.textContent = `SKU: ${variacao.sku}`;
            price_elem.textContent = variacao.valor ? formatPriceForDisplay(variacao.valor) : (produto_detalhe_atual.valor ? formatPriceForDisplay(produto_detalhe_atual.valor) : 'Sob Consulta');
        }
    }

    function fechar_modal_detalhes() {
        const modal = document.getElementById('product-detail-modal');
        if (modal) modal.style.display = 'none';
        document.body.style.overflow = '';
        produto_detalhe_atual = null;
    }

    function alternar_aba_detalhes(aba) {
        const btn = document.getElementById('tab-btn-desc');
        if (aba === 'desc') {
            btn.classList.add('active');
        }
    }

    // ==========================================
    // LOGIN
    // ==========================================
    document.getElementById('admin-login-btn').addEventListener('click', () => {
        if(isAdmin) {
            logoutAdmin();
        } else {
            abrir_modal('login-modal');
            setTimeout(() => {
                const user_field = document.getElementById('login-user');
                if (user_field) user_field.focus();
            }, 100);
        }
    });

    function closeModal(id) {
        const modal = document.getElementById(id);
        if (modal) modal.style.display = 'none';
        document.body.style.overflow = '';
    }

    async function attemptLogin() {
        const u = document.getElementById('login-user').value.trim();
        const p = document.getElementById('login-pass').value;
        const spinner = document.getElementById('loading-spinner');
        if(!u || !p) return alert("Preencha usuário e senha.");
        
        spinner.style.display = 'block';
        try {
            const response = await fetch(`${CF_WORKER_URL}?action=login`, {
                method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ user: u, pass: p })
            });
            const data = await response.json();
            if (response.ok && data.success) { 
                currentUser = u; 
                localStorage.setItem('admin_logged_in', 'true');
                localStorage.setItem('admin_user', u);
                ativarModoAdmin(); 
            } else { alert(data.message || "Usuário ou senha incorretos."); }
        } catch(e) { console.error(e); alert("Erro de conexão com servidor."); } 
        finally { spinner.style.display = 'none'; }
    }

    /**
     * Alterna a exibição entre o painel de configurações (admin) e o catálogo de visualização (cliente).
     */
    function alternar_aba(nome_aba) {
        if (!isAdmin) return;
        
        const tab_config = document.getElementById('tab-config');
        const tab_catalogo = document.getElementById('tab-catalogo');
        
        if (nome_aba === 'config') {
            adminView.style.display = 'block';
            publicView.style.display = 'none';
            filtersContainer.style.display = 'none';
            
            // Destaca visualmente o botão ativo
            tab_config.classList.add('active');
            tab_catalogo.classList.remove('active');
            
            renderAdminTable();
        } else if (nome_aba === 'catalogo') {
            adminView.style.display = 'none';
            publicView.style.display = 'block';
            filtersContainer.style.display = 'flex';
            
            // Destaca visualmente o botão ativo
            tab_config.classList.remove('active');
            tab_catalogo.classList.add('active');
            
            displayProducts(allProducts);
        }
    }

    function ativarModoAdmin() {
        isAdmin = true; 
        closeModal('login-modal');
        document.getElementById('admin-login-btn').innerHTML = '<i class="fas fa-sign-out-alt" style="color: var(--danger-color)"></i>';
        
        // Exibe os novos botões de navegação circulares do administrador
        document.getElementById('tab-config').style.display = 'flex';
        document.getElementById('tab-catalogo').style.display = 'flex';
        
        // Redireciona de forma padrão para a aba de configurações administrativas
        alternar_aba('config');
    }
    
    function logoutAdmin() {
        isAdmin = false; currentUser = "";
        // Remove as informações de login do armazenamento local
        localStorage.removeItem('admin_logged_in');
        localStorage.removeItem('admin_user');
        
        // Oculta os botões de navegação circulares do administrador
        document.getElementById('tab-config').style.display = 'none';
        document.getElementById('tab-catalogo').style.display = 'none';
        
        document.getElementById('admin-login-btn').innerHTML = '<i class="fas fa-cog"></i>';
        
        // Restaura a visualização limpa do catálogo público padrão
        publicView.style.display = 'block'; 
        filtersContainer.style.display = 'flex'; 
        adminView.style.display = 'none';
        
        document.getElementById('login-user').value = ''; 
        document.getElementById('login-pass').value = '';
    }

    // ==========================================
    // FERRAMENTAS E LOGS
    // ==========================================
    function fechar_todos_modais() {
        document.querySelectorAll('.modal-overlay').forEach(m => m.style.display = 'none');
        document.body.style.overflow = '';
    }

    function abrir_modal(id) {
        fechar_todos_modais();
        const modal = document.getElementById(id);
        if (modal) {
            modal.style.display = 'flex';
            document.body.style.overflow = 'hidden';
        }
    }

    function setupDropdown(btnId, dropdownId) {
        document.getElementById(btnId).addEventListener('click', (e) => { 
            e.stopPropagation(); 
            const target = document.getElementById(dropdownId);
            const wasShown = target.classList.contains('show');
            
            // Fecha outros dropdowns para evitar sobreposição
            document.querySelectorAll('.dropdown-content').forEach(d => d.classList.remove('show'));
            
            if (!wasShown) {
                target.classList.add('show');
            }
        });
        document.getElementById(dropdownId).addEventListener('click', (e) => e.stopPropagation());
    }
    setupDropdown('col-toggle-btn', 'col-dropdown');
    setupDropdown('tools-toggle-btn', 'tools-dropdown');
    window.addEventListener('click', () => { document.querySelectorAll('.dropdown-content').forEach(d => d.classList.remove('show')); });

    function toggleColumn(colName, isVisible) {
        const wrapper = document.getElementById('table-wrapper');
        if (isVisible) { wrapper.classList.remove(`hide-${colName}`); } else { wrapper.classList.add(`hide-${colName}`); }
    }

    function exportData() {
        if(allProducts.length === 0) return alert("Catálogo vazio.");
        const dataStr = "data:text/json;charset=utf-8," + encodeURIComponent(JSON.stringify(allProducts, null, 2));
        const downloadNode = document.createElement('a'); downloadNode.setAttribute("href", dataStr);
        downloadNode.setAttribute("download", `catalogo_backup_${new Date().toISOString().split('T')[0]}.json`);
        document.body.appendChild(downloadNode); downloadNode.click(); downloadNode.remove();
        document.getElementById('tools-dropdown').classList.remove('show');
    }
    function importData(event) { }

    let allLogs = [];
    async function openLogsModal() {
        document.getElementById('tools-dropdown').classList.remove('show');
        abrir_modal('logs-modal');
        document.getElementById('logs-table-body').innerHTML = '<tr><td colspan="3" style="text-align:center;">Carregando registros... <i class="fas fa-spinner fa-spin"></i></td></tr>';
        
        try {
            const res = await fetch(`${CF_WORKER_URL}?type=logs`);
            allLogs = await res.json();
            renderLogsTable();
        } catch(e) {
            document.getElementById('logs-table-body').innerHTML = '<tr><td colspan="3" style="text-align:center; color: var(--danger-color);">Erro ao carregar o histórico.</td></tr>';
        }
    }

    async function buscar_url_gas() {
        try {
            const res = await fetch(`${CF_WORKER_URL}?type=config`);
            if (res.ok) {
                const data = await res.json();
                if (data && data.gas_webapp_url) {
                    GAS_WEBAPP_URL = data.gas_webapp_url;
                    const input = document.getElementById('gas-url-input');
                    if (input) input.value = GAS_WEBAPP_URL;
                }
            }
        } catch (e) {
            console.error("Erro ao carregar URL do GAS:", e);
        }
    }

    function open_gas_url_modal() {
        document.getElementById('tools-dropdown').classList.remove('show');
        document.getElementById('gas-url-input').value = GAS_WEBAPP_URL;
        abrir_modal('gas-url-modal');
    }

    async function salvar_url_gas() {
        const url_input = document.getElementById('gas-url-input').value.trim();
        const spinner = document.getElementById('gas-save-spinner');
        
        spinner.style.display = 'block';
        try {
            const res = await fetch(`${CF_WORKER_URL}?action=saveConfig`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ gas_webapp_url: url_input, user: currentUser })
            });
            const data = await res.json();
            if (res.ok && data.success) {
                GAS_WEBAPP_URL = url_input;
                alert("✅ URL do GAS salva com sucesso no KV!");
                closeModal('gas-url-modal');
            } else {
                throw new Error(data.error || "Erro ao salvar no KV.");
            }
        } catch (e) {
            console.error(e);
            alert("❌ Erro ao salvar URL: " + e.message);
        } finally {
            spinner.style.display = 'none';
        }
    }

    function renderLogsTable() {
        const tbody = document.getElementById('logs-table-body');
        tbody.innerHTML = '';
        const filter = document.getElementById('log-user-filter').value.toLowerCase().trim();
        
        let filtered = allLogs;
        if(filter) { filtered = filtered.filter(l => l.user && l.user.toLowerCase().includes(filter)); }
        
        if(filtered.length === 0) {
            tbody.innerHTML = '<tr><td colspan="3" style="text-align:center;">Nenhum registro encontrado.</td></tr>';
            return;
        }
        
        filtered.forEach(l => {
            const d = new Date(l.time);
            // DATA MAIS CURTA PARA CABER MELHOR NO CELULAR
            const dataFormatada = d.toLocaleDateString('pt-BR', {day:'2-digit', month:'2-digit', year:'2-digit'}) + ' ' + d.toLocaleTimeString('pt-BR', {hour: '2-digit', minute:'2-digit'});
            
            tbody.insertAdjacentHTML('beforeend', `
                <tr>
                    <td style="color:var(--secondary-text); font-size: 0.85em;">${dataFormatada}</td>
                    <td style="font-size: 0.9em;"><strong style="color:var(--accent-color);">${l.user.toUpperCase()}</strong></td>
                    <td class="wrap-text" style="font-size: 0.9em;">${l.desc}</td>
                </tr>
            `);
        });
    }

    async function startMigration() {
        document.getElementById('tools-dropdown').classList.remove('show');
        let toMigrate = allProducts.filter(p => p.imagem && p.imagem.includes("drive.google.com"));
        if (toMigrate.length === 0) { alert("✅ Nenhuma imagem do Google Drive encontrada! O seu catálogo já está limpo ou todas já foram migradas."); return; }

        const confirmacao = confirm(`Existem ${toMigrate.length} imagens antigas.\nDeseja baixar do Google e colocar no R2 agora?`);
        if (!confirmacao) return;

        const fill = document.getElementById('migration-fill');
          const status = document.getElementById('migration-status');
          abrir_modal('migration-modal'); let concluidos = 0;

        for (let prod of toMigrate) {
            status.innerText = `Migrando SKU ${prod.sku} (${concluidos + 1} de ${toMigrate.length})...`;
            const newUrl = `${R2_PUBLIC_URL}/${prod.sku}.jpg`;

            try {
                const res = await fetch(`${CF_WORKER_URL}?action=migrateImage`, {
                    method: 'POST', headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ sku: prod.sku, oldUrl: prod.imagem, newUrl: newUrl, user: currentUser })
                });
                if (res.ok) { prod.imagem = newUrl; }
            } catch(e) { console.error(`Erro SKU ${prod.sku}:`, e); }

            concluidos++; fill.style.width = `${(concluidos / toMigrate.length) * 100}%`;
        }

        status.innerText = "Concluído!";
        setTimeout(() => {
            modal.style.display = 'none'; renderAdminTable(); alert(`✅ Sucesso! ${concluidos} fotos migradas!`);
        }, 1000);
    }

    // ==========================================
    // TABELA ADMIN E CRUD
    // ==========================================
    document.getElementById('admin-sort-select').addEventListener('change', renderAdminTable);
    document.getElementById('admin-search-input').addEventListener('input', renderAdminTable);

    function renderAdminTable() {
        const tbody = document.getElementById('admin-table-body');
        tbody.innerHTML = '';
        const sortMode = document.getElementById('admin-sort-select').value;
        const searchTerm = document.getElementById('admin-search-input').value.toLowerCase().trim();
        
        let filtered = [...allProducts];
        if (searchTerm) {
            filtered = filtered.filter(p => (p.produto && p.produto.toLowerCase().includes(searchTerm)) || (String(p.sku).toLowerCase().includes(searchTerm)));
        }
        if (sortMode === 'sku') { filtered.sort((a, b) => parseInt(a.sku) - parseInt(b.sku)); } 
        else { filtered.sort((a, b) => (a.produto || '').localeCompare(b.produto || '')); }

        if (filtered.length === 0) { tbody.innerHTML = '<tr><td colspan="8" style="text-align:center;">Nenhum produto encontrado.</td></tr>'; return; }

        filtered.forEach(p => {
            const img = p.imagem || 'https://via.placeholder.com/45.png/eeeeee/666666?text=X';
            const tr = document.createElement('tr');
            const eh_variacao = p.tipo_produto === 'variacao';
            if (eh_variacao) tr.className = 'tr-variacao';

            // Se for variação, exibe o SKU do pai; se for base, exibe traço (-)
            const valor_coluna_pai = (eh_variacao && p.sku_pai) ? `<strong>${p.sku_pai}</strong>` : '-';

            let nome_exibicao = p.produto || '-';
            if (eh_variacao) {
                nome_exibicao = `↳ <span style="font-weight: 500;">${p.nome_variacao || p.produto}</span>`;
            }

            // Para produto base, disponibiliza o botão rápido "+" para criar variação
            const botao_add_var = !eh_variacao ? `<button class="action-btn add-var" onclick="abrir_modal_nova_variacao('${p.sku}')" title="Adicionar Variação a este produto"><i class="fas fa-plus"></i></button>` : '';

            tr.innerHTML = `
                <td><img src="${img}" onerror="this.src='https://via.placeholder.com/45.png/eeeeee/666666?text=X'"></td>
                <td><strong>${p.sku}</strong></td>
                <td class="col-pai">${valor_coluna_pai}</td>
                <td class="wrap-text col-prod">${nome_exibicao}</td>
                <td class="col-cat">${p.categoria || '-'}</td>
                <td class="col-sub">${p.subCategoria || '-'}</td>
                <td class="col-val">${p.valor ? formatPriceForDisplay(p.valor) : '-'}</td>
                <td class="col-acoes">
                    ${botao_add_var}
                    <button class="action-btn edit" onclick="openEditModal('${p.sku}')" title="Editar"><i class="fas fa-edit"></i></button>
                    <button class="action-btn delete" onclick="deleteProduct('${p.sku}')" title="Excluir"><i class="fas fa-trash"></i></button>
                </td>
            `;
            tbody.appendChild(tr);
        });
    }

    const selCat = document.getElementById('edit-categoria');
    const selSub = document.getElementById('edit-subcategoria');

    function populateModalCategories(selectedCat = '') {
        selCat.innerHTML = '<option value="">Selecione...</option>';
        Object.keys(catTree).sort().forEach(cat => { selCat.add(new Option(cat, cat)); });
        selCat.add(new Option('+ Criar Nova Categoria...', '_new_'));
        selCat.value = selectedCat;
        handleModalCatChange(false);
    }

    function handleModalCatChange(userAction = true) {
        if (userAction && selCat.value === '_new_') {
            const newCat = prompt("Digite o nome da NOVA Categoria:");
            if(newCat && newCat.trim() !== '') {
                if(!catTree[newCat.trim()]) catTree[newCat.trim()] = []; 
                populateModalCategories(newCat.trim());
            } else { selCat.value = ""; }
        }
        selSub.innerHTML = '<option value="">Nenhuma / Vazio</option>';
        const currentCat = selCat.value;
        if (currentCat && currentCat !== '_new_' && catTree[currentCat]) {
            catTree[currentCat].sort().forEach(sub => { selSub.add(new Option(sub, sub)); });
            selSub.add(new Option('+ Criar Nova Sub-Categoria...', '_new_'));
        }
    }

    function handleModalSubChange() {
        if (selSub.value === '_new_') {
            const currentCat = selCat.value;
            const newSub = prompt(`Digite a NOVA Sub-Categoria para '${currentCat}':`);
            if(newSub && newSub.trim() !== '') {
                if(!catTree[currentCat].includes(newSub.trim())) catTree[currentCat].push(newSub.trim());
                handleModalCatChange(false); 
                selSub.value = newSub.trim();
            } else { selSub.value = ""; }
        }
    }

    let modo_codigo_fonte_ativo = false;

    function formatar_editor_descricao(comando) {
        if (modo_codigo_fonte_ativo) return;
        document.execCommand(comando, false, null);
        document.getElementById('edit-descricao-editor').focus();
    }

    function alternar_codigo_fonte_editor() {
        const editor = document.getElementById('edit-descricao-editor');
        const textarea = document.getElementById('edit-descricao-source');
        const btn = document.getElementById('btn-toggle-source');

        modo_codigo_fonte_ativo = !modo_codigo_fonte_ativo;

        if (modo_codigo_fonte_ativo) {
            textarea.value = editor.innerHTML;
            editor.style.display = 'none';
            textarea.style.display = 'block';
            textarea.focus();
            btn.classList.add('active');
            btn.innerHTML = '<i class="fas fa-eye"></i> Visualizar';
        } else {
            editor.innerHTML = textarea.value;
            textarea.style.display = 'none';
            editor.style.display = 'block';
            editor.focus();
            btn.classList.remove('active');
            btn.innerHTML = '<i class="fas fa-code"></i> Código Fonte';
        }
    }

    function preencher_select_produtos_pai(sku_pai_selecionado = '') {
        const sel = document.getElementById('edit-parent-sku');
        sel.innerHTML = '<option value="">Selecione o Produto Pai...</option>';
        
        // Ordena sempre os produtos base numericamente por SKU ou alfabeticamente
        const produtos_base = allProducts
            .filter(p => p.tipo_produto !== 'variacao')
            .sort((a, b) => {
                const numA = parseInt(a.sku), numB = parseInt(b.sku);
                if (!isNaN(numA) && !isNaN(numB)) return numA - numB;
                return String(a.sku).localeCompare(String(b.sku));
            });

        produtos_base.forEach(p => {
            sel.add(new Option(`SKU ${p.sku} - ${p.produto}`, p.sku));
        });

        if (sku_pai_selecionado) sel.value = String(sku_pai_selecionado);
    }

    function filtrar_produtos_pai_select() {
        const termo = document.getElementById('parent-search-input').value.toLowerCase().trim();
        const sel = document.getElementById('edit-parent-sku');
        const valor_atual = sel.value;
        sel.innerHTML = '<option value="">Selecione o Produto Pai...</option>';

        const produtos_base = allProducts
            .filter(p => p.tipo_produto !== 'variacao')
            .sort((a, b) => {
                const numA = parseInt(a.sku), numB = parseInt(b.sku);
                if (!isNaN(numA) && !isNaN(numB)) return numA - numB;
                return String(a.sku).localeCompare(String(b.sku));
            });

        const filtrados = termo 
            ? produtos_base.filter(p => (p.produto && p.produto.toLowerCase().includes(termo)) || String(p.sku).toLowerCase().includes(termo))
            : produtos_base;

        filtrados.forEach(p => {
            sel.add(new Option(`SKU ${p.sku} - ${p.produto}`, p.sku));
        });

        if (valor_atual) sel.value = valor_atual;
    }

    function ao_mudar_produto_pai_selecionado() {
        const parent_sku = document.getElementById('edit-parent-sku').value;
        if (!parent_sku) return;
        const pai = allProducts.find(p => String(p.sku) === String(parent_sku));
        if (pai) {
            document.getElementById('edit-categoria').value = pai.categoria || '';
            handleModalCatChange(false);
            if (pai.subCategoria) document.getElementById('edit-subcategoria').value = pai.subCategoria;
            document.getElementById('edit-descricao-editor').innerHTML = pai.descricao || '';
            document.getElementById('edit-descricao-source').value = pai.descricao || '';
        }
    }

    function alternar_tipo_produto_modal() {
        const tipo = document.getElementById('edit-tipo').value;
        const grpParent = document.getElementById('group-parent-sku');
        const grpNomeVar = document.getElementById('group-nome-variacao');
        const avisoHerdada = document.getElementById('desc-herdada-aviso');
        const editorArea = document.getElementById('edit-descricao-editor');
        const toolbar = document.getElementById('editor-toolbar-container');

        if (tipo === 'variacao') {
            grpParent.style.display = 'block';
            grpNomeVar.style.display = 'block';
            avisoHerdada.style.display = 'block';
            editorArea.setAttribute('contenteditable', 'false');
            editorArea.style.opacity = '0.7';
            editorArea.style.pointerEvents = 'none';
            toolbar.style.opacity = '0.5';
            toolbar.style.pointerEvents = 'none';
            
            // Carrega produtos pai ordenados e atualiza a descrição herdada
            preencher_select_produtos_pai(document.getElementById('edit-parent-sku').value);
            ao_mudar_produto_pai_selecionado();
        } else {
            grpParent.style.display = 'none';
            grpNomeVar.style.display = 'none';
            avisoHerdada.style.display = 'none';
            editorArea.setAttribute('contenteditable', 'true');
            editorArea.style.opacity = '1';
            editorArea.style.pointerEvents = 'auto';
            toolbar.style.opacity = '1';
            toolbar.style.pointerEvents = 'auto';
        }
    }

    function abrir_modal_nova_variacao(sku_pai) {
        const pai = allProducts.find(p => String(p.sku) === String(sku_pai));
        if (!pai) return;

        openEditModal(null);
        document.getElementById('modal-title').innerText = `Nova Variação (Pai: SKU ${pai.sku})`;
        document.getElementById('edit-tipo').value = 'variacao';
        alternar_tipo_produto_modal();
        document.getElementById('edit-parent-sku').value = String(pai.sku);
        document.getElementById('edit-nome').value = pai.produto;
        document.getElementById('edit-categoria').value = pai.categoria || '';
        handleModalCatChange(false);
        if (pai.subCategoria) document.getElementById('edit-subcategoria').value = pai.subCategoria;
        document.getElementById('edit-descricao-editor').innerHTML = pai.descricao || '';
        document.getElementById('edit-descricao-source').value = pai.descricao || '';
    }

    function openEditModal(sku = null) {
        document.getElementById('edit-file').value = ''; 
        document.getElementById('parent-search-input').value = '';

        // Reseta o modo código-fonte se estivesse ativo
        if (modo_codigo_fonte_ativo) {
            alternar_codigo_fonte_editor();
        }

        if (sku) {
            document.getElementById('modal-title').innerText = "Editar Produto";
            const p = allProducts.find(x => String(x.sku) === String(sku));
            document.getElementById('edit-sku').value = p.sku;
            document.getElementById('edit-nome').value = p.produto || '';
            document.getElementById('edit-valor').value = cleanPriceForEdit(p.valor);
            document.getElementById('edit-img-url').value = p.imagem || '';
            document.getElementById('edit-tipo').value = p.tipo_produto || 'base';
            document.getElementById('edit-nome-variacao').value = p.nome_variacao || '';
            
            // Se for variação, busca sempre a descrição do produto pai
            if (p.tipo_produto === 'variacao' && p.sku_pai) {
                const pai = allProducts.find(item => String(item.sku) === String(p.sku_pai));
                const desc_final = (pai && pai.descricao) ? pai.descricao : (p.descricao || '');
                document.getElementById('edit-descricao-editor').innerHTML = desc_final;
                document.getElementById('edit-descricao-source').value = desc_final;
            } else {
                document.getElementById('edit-descricao-editor').innerHTML = p.descricao || '';
                document.getElementById('edit-descricao-source').value = p.descricao || '';
            }
            
            alternar_tipo_produto_modal();
            if (p.tipo_produto === 'variacao') {
                preencher_select_produtos_pai(p.sku_pai || '');
            }

            if(p.categoria && !catTree[p.categoria]) { catTree[p.categoria] = []; } 
            if(p.categoria && p.subCategoria && !catTree[p.categoria].includes(p.subCategoria)) { catTree[p.categoria].push(p.subCategoria); }
            
            populateModalCategories(p.categoria || '');
            if(p.subCategoria) selSub.value = p.subCategoria;

            if(p.imagem) { 
                document.getElementById('image-preview').src = p.imagem; 
                document.getElementById('image-preview').style.display = 'block'; 
            } else { 
                document.getElementById('image-preview').style.display = 'none'; 
            }
        } else {
            document.getElementById('modal-title').innerText = "Novo Produto";
            document.getElementById('edit-sku').value = '';
            document.getElementById('edit-nome').value = '';
            document.getElementById('edit-valor').value = '';
            document.getElementById('edit-img-url').value = '';
            document.getElementById('edit-tipo').value = 'base';
            document.getElementById('edit-nome-variacao').value = '';
            document.getElementById('edit-descricao-editor').innerHTML = '';
            document.getElementById('edit-descricao-source').value = '';
            alternar_tipo_produto_modal();
            populateModalCategories('');
            document.getElementById('image-preview').style.display = 'none';
        }
        abrir_modal('edit-modal');
    }

    function previewImage(event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('image-preview').src = e.target.result; 
                document.getElementById('image-preview').style.display = 'block';
            }
            reader.readAsDataURL(file);
        }
    }

    async function saveProduct() {
        const sku = document.getElementById('edit-sku').value.trim();
        const nome = document.getElementById('edit-nome').value.trim();
        const tipo = document.getElementById('edit-tipo').value;
        const parent_sku = document.getElementById('edit-parent-sku').value;
        const nome_variacao = document.getElementById('edit-nome-variacao').value.trim();

        // Se estiver no modo código-fonte, sincroniza o conteúdo antes de salvar
        if (modo_codigo_fonte_ativo) {
            document.getElementById('edit-descricao-editor').innerHTML = document.getElementById('edit-descricao-source').value;
        }

        let descricao_html = document.getElementById('edit-descricao-editor').innerHTML.trim();

        if(!sku || !nome) return alert("SKU e Nome são obrigatórios!");
        if(tipo === 'variacao' && !parent_sku) return alert("Por favor, selecione a qual Produto Pai esta variação pertence.");

        // Se for variação, garante que a descrição salva seja exatamente a do pai
        if (tipo === 'variacao') {
            const pai = allProducts.find(p => String(p.sku) === String(parent_sku));
            if (pai && pai.descricao) {
                descricao_html = pai.descricao;
            }
        }

        const btn = document.getElementById('btn-salvar-produto');
        const spinner = document.getElementById('save-spinner');
        const fileInput = document.getElementById('edit-file');
        let imgUrl = document.getElementById('edit-img-url').value;

        btn.disabled = true; spinner.style.display = 'block';

        try {
            if (fileInput.files.length > 0) {
                const file = fileInput.files[0];
                const resUpload = await fetch(`${CF_WORKER_URL}?action=uploadImage&sku=${sku}`, {
                    method: 'PUT', headers: { 'Content-Type': file.type }, body: file
                });
                if(!resUpload.ok) throw new Error("Falha ao salvar a imagem no R2.");
                imgUrl = `${R2_PUBLIC_URL}/${sku}.jpg?v=${new Date().getTime()}`;
            }

            let rawValor = document.getElementById('edit-valor').value.trim();
            let finalValor = rawValor;
            if(rawValor && !rawValor.toUpperCase().startsWith('R$')) { finalValor = 'R$ ' + rawValor; }

            const productData = {
                sku: sku,
                produto: nome,
                categoria: document.getElementById('edit-categoria').value,
                subCategoria: document.getElementById('edit-subcategoria').value,
                valor: finalValor,
                imagem: imgUrl,
                tipo_produto: tipo,
                sku_pai: tipo === 'variacao' ? parent_sku : '',
                nome_variacao: tipo === 'variacao' ? nome_variacao : '',
                descricao: descricao_html
            };

            const resData = await fetch(`${CF_WORKER_URL}?action=saveProduct`, {
                method: 'POST', headers: { 'Content-Type': 'application/json' }, 
                body: JSON.stringify({ product: productData, user: currentUser })
            });

            if(!resData.ok) throw new Error("Falha ao salvar produto no Worker.");

            // Sincroniza em tempo real com o Google Sheets usando a URL de Web App externa
            if (GAS_WEBAPP_URL && GAS_WEBAPP_URL.trim() !== '') {
                fetch(GAS_WEBAPP_URL, {
                    method: 'POST',
                    redirect: 'follow',
                    headers: { 'Content-Type': 'text/plain;charset=utf-8' },
                    body: JSON.stringify({ action: "save", product: productData })
                })
                .then(res => res.json())
                .then(r => console.log("Sincronização Sheets de sucesso:", r))
                .catch(err => console.error("Erro na sincronização Sheets:", err));
            }

            const idx = allProducts.findIndex(p => String(p.sku) === sku);
            if(idx >= 0) allProducts[idx] = productData; else allProducts.push(productData);
            
            renderAdminTable(); 
            displayProducts(allProducts); 
            closeModal('edit-modal');
        } catch (e) {
            console.error(e); alert("Erro: " + e.message);
        } finally { btn.disabled = false; spinner.style.display = 'none'; }
    }

    async function deleteProduct(sku) {
        if(confirm(`⚠️ EXCLUIR DEFINITIVAMENTE o produto SKU ${sku}?`)) {
            try {
                const res = await fetch(`${CF_WORKER_URL}?action=deleteProduct`, {
                    method: 'POST', headers: { 'Content-Type': 'application/json' }, 
                    body: JSON.stringify({ sku: sku, user: currentUser })
                });
                if(res.ok) {
                    // Sincroniza exclusão em tempo real com o Google Sheets usando a URL de Web App externa
                    if (GAS_WEBAPP_URL && GAS_WEBAPP_URL.trim() !== '') {
                        fetch(GAS_WEBAPP_URL, {
                            method: 'POST',
                            redirect: 'follow', // Obrigatório para redirecionamentos internos do Google
                            headers: { 'Content-Type': 'text/plain;charset=utf-8' }, // text/plain evita problemas de CORS no navegador
                            body: JSON.stringify({ action: "delete", sku: sku })
                        })
                        .then(res => res.json())
                        .then(r => console.log("Remoção Sheets de sucesso:", r))
                        .catch(err => console.error("Erro na remoção Sheets:", err));
                    }

                    allProducts = allProducts.filter(p => String(p.sku) !== String(sku));
                    renderAdminTable(); displayProducts(allProducts); 
                } else { throw new Error("Erro na exclusão"); }
            } catch(e) { alert("Falha ao excluir."); }
        }
    }

    function openConfigCatModal() { document.getElementById('tools-dropdown').classList.remove('show'); renderCatTreeUI(); abrir_modal('config-cat-modal'); }
    function renderCatTreeUI() {
        const container = document.getElementById('cat-tree-container'); container.innerHTML = '<ul class="cat-tree-list"></ul>'; const ul = container.querySelector('ul');
        Object.keys(catTree).sort().forEach(cat => {
            let html = `<li class="cat-tree-item"><div class="cat-tree-header"><span><i class="fas fa-folder-open" style="color:var(--accent-color); margin-right:8px;"></i> ${cat}</span><div><button class="btn-small" onclick="addSubCatUI('${cat}')"><i class="fas fa-plus"></i> Sub</button><button class="btn-small del" onclick="delCatUI('${cat}')"><i class="fas fa-trash"></i></button></div></div><ul class="subcat-list">`;
            if(catTree[cat].length === 0) { html += `<li class="subcat-item" style="color:#999; font-style:italic;">Sem sub-categorias</li>`; } else {
                catTree[cat].sort().forEach(sub => { html += `<li class="subcat-item"><span><i class="fas fa-angle-right" style="margin-right:8px;"></i> ${sub}</span><button class="btn-small del" onclick="delSubCatUI('${cat}', '${sub}')"><i class="fas fa-times"></i></button></li>`; });
            }
            html += `</ul></li>`; ul.insertAdjacentHTML('beforeend', html);
        });
    }
    function addCategoryUI() { const newCat = prompt("Nova Categoria Mãe:"); if(newCat && newCat.trim() !== '') { if(catTree[newCat.trim()]) return alert("Já existe!"); catTree[newCat.trim()] = []; renderCatTreeUI(); } }
    function addSubCatUI(cat) { const newSub = prompt(`Nova sub-categoria para '${cat}':`); if(newSub && newSub.trim() !== '') { if(catTree[cat].includes(newSub.trim())) return alert("Já existe!"); catTree[cat].push(newSub.trim()); renderCatTreeUI(); } }
    function delCatUI(cat) { if(confirm(`Apagar '${cat}'?`)) { delete catTree[cat]; renderCatTreeUI(); } }
    function delSubCatUI(cat, sub) { if(confirm(`Remover '${sub}' de '${cat}'?`)) { catTree[cat] = catTree[cat].filter(s => s !== sub); renderCatTreeUI(); } }
  </script>
</body>
</html>
