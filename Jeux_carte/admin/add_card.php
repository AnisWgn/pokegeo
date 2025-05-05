<?php
require_once $_SERVER['DOCUMENT_ROOT'] .'/portfolio/project/Jeux_carte/includes/header.php';

// Vérifier si l'utilisateur est admin
if (!isAdmin()) {
    header('Location: ../index.php');
    exit();
}

$error = '';
$success = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'] ?? '';
    $description = $_POST['description'] ?? '';
    $available_quantity = $_POST['available_quantity'] ?? 0;
    $image_type = $_POST['image_type'] ?? 'url';
    
    if (empty($name) || empty($description) || $available_quantity < 0) {
        $error = 'Veuillez remplir tous les champs obligatoires avec des valeurs valides.';
    } else {
        try {
            if ($image_type === 'url') {
                $image_url = $_POST['image_url'] ?? '';
            } else {
                // Gestion de l'upload de fichier
                if (isset($_FILES['image_file']) && $_FILES['image_file']['error'] === UPLOAD_ERR_OK) {
                    $upload_dir = $_SERVER['DOCUMENT_ROOT'] . '/portfolio/project/Jeux_carte/images/';
                    
                    // Créer le dossier s'il n'existe pas
                    if (!file_exists($upload_dir)) {
                        mkdir($upload_dir, 0777, true);
                    }
                    
                    $file_name = basename($_FILES['image_file']['name']);
                    $target_path = $upload_dir . $file_name;
                    
                    // Vérification du type de fichier
                    $allowed_types = ['image/jpeg', 'image/png', 'image/gif'];
                    if (!in_array($_FILES['image_file']['type'], $allowed_types)) {
                        $error = "Type de fichier non autorisé. Utilisez JPG, PNG ou GIF.";
                    } else {
                        if (move_uploaded_file($_FILES['image_file']['tmp_name'], $target_path)) {
                            $image_url = 'images/' . $file_name;
                        } else {
                            $error = "Erreur lors de l'upload du fichier. Vérifiez les permissions du dossier.";
                        }
                    }
                } else {
                    $error = "Veuillez sélectionner une image.";
                }
            }
            
            if (!isset($error) || empty($error)) {
                $stmt = $pdo->prepare('
                    INSERT INTO cards (name, description, available_quantity, image_url) 
                    VALUES (?, ?, ?, ?)
                ');
                
                if ($stmt->execute([$name, $description, $available_quantity, $image_url])) {
                    $success = 'La carte a été ajoutée avec succès !';
                } else {
                    $error = 'Une erreur est survenue lors de l\'ajout de la carte.';
                }
            }
        } catch (PDOException $e) {
            $error = 'Une erreur est survenue lors de l\'ajout de la carte.';
        }
    }
}
?>

<h2 class="mb-4">Ajouter une nouvelle carte</h2>

<?php if ($error): ?>
    <div class="alert alert-danger"><?php echo htmlspecialchars($error); ?></div>
<?php endif; ?>

<?php if ($success): ?>
    <div class="alert alert-success"><?php echo htmlspecialchars($success); ?></div>
<?php endif; ?>

<div class="form-container">
    <form method="POST" action="" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="name" class="form-label">Nom de la carte *</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        
        <div class="mb-3">
            <label for="description" class="form-label">Description *</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>
        
        <div class="mb-3">
            <label for="available_quantity" class="form-label">Quantité disponible *</label>
            <input type="number" class="form-control" id="available_quantity" name="available_quantity" 
                   min="0" value="0" required>
        </div>
        
        <div class="mb-3">
            <label class="form-label">Type d'image</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="image_type" id="type_url" value="url" checked>
                <label class="form-check-label" for="type_url">
                    URL d'image
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="image_type" id="type_file" value="file">
                <label class="form-check-label" for="type_file">
                    Fichier image
                </label>
            </div>
        </div>
        
        <div id="url-option" class="mb-3">
            <label for="image_url" class="form-label">URL de l'image</label>
            <input type="url" class="form-control" id="image_url" name="image_url" 
                   placeholder="https://exemple.com/image.jpg">
        </div>
        
        <div id="file-option" class="mb-3" style="display: none;">
            <label for="image_file" class="form-label">Sélectionner une image</label>
            <input type="file" class="form-control" id="image_file" name="image_file" accept="image/*">
        </div>
        
        <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Ajouter la carte</button>
            <a href="cards.php" class="btn btn-secondary">Retour à la liste</a>
        </div>
    </form>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const urlOption = document.getElementById('url-option');
    const fileOption = document.getElementById('file-option');
    const typeUrl = document.getElementById('type_url');
    const typeFile = document.getElementById('type_file');
    
    function updateOptions() {
        if (typeUrl.checked) {
            urlOption.style.display = 'block';
            fileOption.style.display = 'none';
            document.getElementById('image_file').required = false;
            document.getElementById('image_url').required = false;
        } else {
            urlOption.style.display = 'none';
            fileOption.style.display = 'block';
            document.getElementById('image_url').required = false;
            document.getElementById('image_file').required = true;
        }
    }
    
    typeUrl.addEventListener('change', updateOptions);
    typeFile.addEventListener('change', updateOptions);
    
    // Initialisation
    updateOptions();
});
</script>

<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/portfolio/project/Jeux_carte/includes/footer.php';
?> 