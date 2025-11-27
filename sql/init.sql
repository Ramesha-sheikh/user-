-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: medical_ai_app
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `analysis_history`
--

DROP TABLE IF EXISTS `analysis_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analysis_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `specialty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'General',
  `analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enhanced_analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_metadata` json DEFAULT NULL,
  `status` enum('success','error') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recommendations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_user_analysis` (`user_id`),
  CONSTRAINT `fk_user_analysis` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis_history`
--

LOCK TABLES `analysis_history` WRITE;
/*!40000 ALTER TABLE `analysis_history` DISABLE KEYS */;
INSERT INTO `analysis_history` VALUES (1,1,'General','For educational purposes only, here is an analysis of the visible features in this general medical image,','For educational purposes only, here is an analysis of the visible features in this general medical image,',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"11.20\"}','success','2025-09-28 23:08:26',NULL),(2,1,'General','This image is a B-mode ultrasound scan, labeled as \"LIVER TRV_\" (transverse view of the liver).\n\nHere\'s a hypothetical description of the visible features:\n\n1.  **Organ Identification:** The primary organ visualized is the liver, as indicated by the text label \"LIVER\". The scan appears to be a transverse cross-section.\n\n2.  **Parenchymal Echogenicity and Texture:** The liver parenchyma (the main tissue) displays a relatively homogeneous, medium-level echogenicity, appearing as a uniform gray with a fine, granular texture throughout the visualized area.\n\n3.  **Intrahepatic Structures:**\n    *   Numerous anechoic (black) tubular and rounded structures are visible within the liver parenchyma. These are consistent with blood vessels (e.g., hepatic veins, portal veins) or bile ducts, seen in various orientations (longitudinal and cross-sectional).\n    *   Some of these anechoic structures are bordered by thin, hyperechoic (bright) lines, which could represent vessel walls or surrounding connective tissue.\n    *   Several distinct, bright, linear structures are also interspersed within the parenchyma, possibly representing larger vascular structures or fibrous septa.\n\n4.  **Borders and Adjacent Structures:**\n    *   The superior border of the liver (towards the top of the image) appears somewhat undulating.\n    *   Towards the inferior aspect of the image, a prominent, curvilinear, hyperechoic structure is observed, which is consistent with the diaphragm. This structure exhibits some posterior acoustic shadowing, a common artifact associated with highly reflective surfaces like bone or gas, or in this case, the diaphragm.\n    *   The overall shape of the visualized liver section appears broadly triangular or wedge-shaped, typical of an ultrasound sector scan.\n\n5.  ','This image is a B-mode ultrasound scan, labeled as \"LIVER TRV_\" (transverse view of the liver).\n\nHere\'s a hypothetical description of the visible features:\n\n1.  **Organ Identification:** The primary organ visualized is the liver, as indicated by the text label \"LIVER\". The scan appears to be a transverse cross-section.\n\n2.  **Parenchymal Echogenicity and Texture:** The liver parenchyma (the main tissue) displays a relatively homogeneous, medium-level echogenicity, appearing as a uniform gray with a fine, granular texture throughout the visualized area.\n\n3.  **Intrahepatic Structures:**\n    *   Numerous anechoic (black) tubular and rounded structures are visible within the liver parenchyma. These are consistent with blood vessels (e.g., hepatic veins, portal veins) or bile ducts, seen in various orientations (longitudinal and cross-sectional).\n    *   Some of these anechoic structures are bordered by thin, hyperechoic (bright) lines, which could represent vessel walls or surrounding connective tissue.\n    *   Several distinct, bright, linear structures are also interspersed within the parenchyma, possibly representing larger vascular structures or fibrous septa.\n\n4.  **Borders and Adjacent Structures:**\n    *   The superior border of the liver (towards the top of the image) appears somewhat undulating.\n    *   Towards the inferior aspect of the image, a prominent, curvilinear, hyperechoic structure is observed, which is consistent with the diaphragm. This structure exhibits some posterior acoustic shadowing, a common artifact associated with highly reflective surfaces like bone or gas, or in this case, the diaphragm.\n    *   The overall shape of the visualized liver section appears broadly triangular or wedge-shaped, typical of an ultrasound sector scan.\n\n5.  ',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"80.36\"}','success','2025-09-28 23:18:46',NULL),(3,1,'Gastroenterology','For educational purposes only, let\'s analyze the visible features of this medical image. Please note that this image appears to be an **obstetrical ultrasound of a fetus**, rather than a typical Gastroenterology image focusing on adult digestive organs.\n\nHere\'s a hypothetical description of the visible features:\n\n**Image Type and Orientation:**\n*   This is a','For educational purposes only, let\'s analyze the visible features of this medical image. Please note that this image appears to be an **obstetrical ultrasound of a fetus**, rather than a typical Gastroenterology image focusing on adult digestive organs.\n\nHere\'s a hypothetical description of the visible features:\n\n**Image Type and Orientation:**\n*   This is a',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"259.19\"}','success','2025-09-28 23:26:35',NULL),(4,1,'Gastroenterology','','',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"259.19\"}','success','2025-09-28 23:53:47',NULL),(5,1,'General','This image is an ultrasound scan, specifically labeled as a \"LIVER TRV_\" view, indicating a transverse scan of the liver.\n\nHere\'s an analysis of the visible features:\n\n1.  **Overall Image Presentation:** The image is a grayscale B-mode ultrasound, displaying varying shades of gray representing tissue echogenicity (how sound waves are reflected). The depth scale on the right side indicates a maximum depth of 16 cm. Technical parameters like \"MI: 1.2\" and \"20fps\" (frames per second) are also displayed.\n\n2.  **Liver Parenchyma:** The dominant structure in the image is consistent with the liver. The liver parenchyma generally exhibits a relatively homogeneous, medium-level echogenicity, appearing as a finely textured gray area. Scattered within this texture are numerous tiny, bright (echogenic) speckles.\n\n3.  **Vascular Structures:**\n    ','This image is an ultrasound scan, specifically labeled as a \"LIVER TRV_\" view, indicating a transverse scan of the liver.\n\nHere\'s an analysis of the visible features:\n\n1.  **Overall Image Presentation:** The image is a grayscale B-mode ultrasound, displaying varying shades of gray representing tissue echogenicity (how sound waves are reflected). The depth scale on the right side indicates a maximum depth of 16 cm. Technical parameters like \"MI: 1.2\" and \"20fps\" (frames per second) are also displayed.\n\n2.  **Liver Parenchyma:** The dominant structure in the image is consistent with the liver. The liver parenchyma generally exhibits a relatively homogeneous, medium-level echogenicity, appearing as a finely textured gray area. Scattered within this texture are numerous tiny, bright (echogenic) speckles.\n\n3.  **Vascular Structures:**\n    ',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"80.36\"}','success','2025-09-28 23:56:34',NULL),(6,1,'Radiology','For educational purposes only, here is a hypothetical analysis of the visible features in this radiology medical image:\n\nThis is a frontal chest radiograph, likely an anteroposterior (AP) projection, given the relatively horizontal clavicles and the projection of the scapulae over the lung fields. The image quality appears adequate for evaluation.\n\n**Bony Structures:**\n*   **Ribs:** Approximately 9-10 posterior ribs are visible above the diaphragm bilaterally, suggesting a reasonable inspiratory effort. The ribs appear generally intact with no obvious acute fractures or significant deformities. There is some subtle irregularity or perhaps increased density/sclerosis noted in the heads and necks of some ribs, particularly on the right side (as seen in crop 3), which could be related to normal growth plate activity or subtle bone remodeling.\n*   **Clavicles:** Both clavicles are visible and appear relatively symmetrical. The medial ends of the clavicles show some irregularity or increased density (e.g., crop 4, left clavicle), consistent with open growth plates or normal variations in bone development.\n*   **Scapulae:** Portions of both scapulae are visible, projected over the lateral lung fields. Their contours appear generally smooth.\n*   **Humeri:** The proximal portions of both humeri, including the humeral heads and surgical necks, are visible. Notably, open growth plates (physes) are clearly discernible in the proximal humeri (e.g., crops 1, 4, 5, 8), indicating a skeletally immature individual (pediatric or adolescent patient).\n*   **Vertebrae:** The thoracic vertebral bodies are visible through the mediastinum. Their alignment appears straight, and their density appears within normal limits for the visible segments.\n\n**Soft Tissues and Thoracic Contents:**\n*   **Diaphragm:** Both hemidiaphragms have smooth, well-defined contours. The right hemidiaphragm appears slightly higher than the left, which is a common normal variant. The costophrenic angles on both sides are sharp, suggesting no significant pleural effusion.\n*   **Gastric Air Bubble:** A clear, well-defined air-fluid level or gas bubble is visible beneath the left hemidiaphragm (e.g., crops 11, 12), consistent with the normal gastric air bubble.\n*   **Heart and Mediastinum:** The cardiac silhouette appears within normal limits for size and shape, though a precise cardiothoracic ratio would require knowing the projection (AP vs. PA). The mediastinal contours appear smooth and unremarkable. The trachea appears midline.\n*   **Lungs:** Both lung fields are symmetrically expanded and appear generally clear. Normal pulmonary vascular markings are observed throughout, extending to the periphery. There are no obvious focal areas of consolidation, infiltrates, nodules, or masses. No evidence of pneumothorax or significant pleural thickening is apparent. The hilar regions appear unremarkable.\n\n**Other Features:**\n*   A lead marker \"L\" is present in the upper right corner of the image (e.g., crop 4), indicating the patient\'s left side.\n\nIn summary, this chest radiograph demonstrates a skeletally immature individual with generally intact bony structures, clear lung fields, and a normal-appearing cardiac silhouette and mediastinum.','For educational purposes only, here is a hypothetical analysis of the visible features in this radiology medical image:\n\nThis is a frontal chest radiograph, likely an anteroposterior (AP) projection, given the relatively horizontal clavicles and the projection of the scapulae over the lung fields. The image quality appears adequate for evaluation.\n\n**Bony Structures:**\n*   **Ribs:** Approximately 9-10 posterior ribs are visible above the diaphragm bilaterally, suggesting a reasonable inspiratory effort. The ribs appear generally intact with no obvious acute fractures or significant deformities. There is some subtle irregularity or perhaps increased density/sclerosis noted in the heads and necks of some ribs, particularly on the right side (as seen in crop 3), which could be related to normal growth plate activity or subtle bone remodeling.\n*   **Clavicles:** Both clavicles are visible and appear relatively symmetrical. The medial ends of the clavicles show some irregularity or increased density (e.g., crop 4, left clavicle), consistent with open growth plates or normal variations in bone development.\n*   **Scapulae:** Portions of both scapulae are visible, projected over the lateral lung fields. Their contours appear generally smooth.\n*   **Humeri:** The proximal portions of both humeri, including the humeral heads and surgical necks, are visible. Notably, open growth plates (physes) are clearly discernible in the proximal humeri (e.g., crops 1, 4, 5, 8), indicating a skeletally immature individual (pediatric or adolescent patient).\n*   **Vertebrae:** The thoracic vertebral bodies are visible through the mediastinum. Their alignment appears straight, and their density appears within normal limits for the visible segments.\n\n**Soft Tissues and Thoracic Contents:**\n*   **Diaphragm:** Both hemidiaphragms have smooth, well-defined contours. The right hemidiaphragm appears slightly higher than the left, which is a common normal variant. The costophrenic angles on both sides are sharp, suggesting no significant pleural effusion.\n*   **Gastric Air Bubble:** A clear, well-defined air-fluid level or gas bubble is visible beneath the left hemidiaphragm (e.g., crops 11, 12), consistent with the normal gastric air bubble.\n*   **Heart and Mediastinum:** The cardiac silhouette appears within normal limits for size and shape, though a precise cardiothoracic ratio would require knowing the projection (AP vs. PA). The mediastinal contours appear smooth and unremarkable. The trachea appears midline.\n*   **Lungs:** Both lung fields are symmetrically expanded and appear generally clear. Normal pulmonary vascular markings are observed throughout, extending to the periphery. There are no obvious focal areas of consolidation, infiltrates, nodules, or masses. No evidence of pneumothorax or significant pleural thickening is apparent. The hilar regions appear unremarkable.\n\n**Other Features:**\n*   A lead marker \"L\" is present in the upper right corner of the image (e.g., crop 4), indicating the patient\'s left side.\n\nIn summary, this chest radiograph demonstrates a skeletally immature individual with generally intact bony structures, clear lung fields, and a normal-appearing cardiac silhouette and mediastinum.',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"455.32\"}','success','2025-09-28 23:58:16',NULL),(7,3,'Gastroenterology','This image is a grayscale B-mode ultrasound scan, characteristic of obstetric imaging rather than a dedicated gastroenterology study of an adult. It displays a developing fetus within the uterus. The scan date is indicated as February 2, 2012, and the gestational age (GA) derived from the measurement is 12 weeks and 6 days (12w6d).\n\n**Visible Features (Hypothetical Description for Educational Purposes):**\n\n1.  **Fetus:** The primary subject of the image is a fetus, observed in a sagittal (longitudinal) plane.\n    *   **Head:** The fetal head is clearly delineated, appearing as a rounded structure at one end of the CRL measurement. Internal cranial structures, such as early brain development, may be subtly suggested by varying echogenicity within the head, though specific structures are not distinctly resolved in this general view.\n    *   **Trunk:** The fetal body or trunk is visible, extending from the head. Along its posterior aspect, the developing spine may be perceived as a hyperechoic (bright) linear structure. Within the abdominal region of the trunk, the developing gastrointestinal system would hypothetically be present, but individual','This image is a grayscale B-mode ultrasound scan, characteristic of obstetric imaging rather than a dedicated gastroenterology study of an adult. It displays a developing fetus within the uterus. The scan date is indicated as February 2, 2012, and the gestational age (GA) derived from the measurement is 12 weeks and 6 days (12w6d).\n\n**Visible Features (Hypothetical Description for Educational Purposes):**\n\n1.  **Fetus:** The primary subject of the image is a fetus, observed in a sagittal (longitudinal) plane.\n    *   **Head:** The fetal head is clearly delineated, appearing as a rounded structure at one end of the CRL measurement. Internal cranial structures, such as early brain development, may be subtly suggested by varying echogenicity within the head, though specific structures are not distinctly resolved in this general view.\n    *   **Trunk:** The fetal body or trunk is visible, extending from the head. Along its posterior aspect, the developing spine may be perceived as a hyperechoic (bright) linear structure. Within the abdominal region of the trunk, the developing gastrointestinal system would hypothetically be present, but individual',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"259.19\"}','success','2025-09-29 01:16:39',NULL),(8,2,'Radiology','For educational purposes only, here is a hypothetical description of the visible features in this radiology medical image, without providing medical advice:\n\nThis image is a frontal chest radiograph, likely a posterior-anterior (PA) view, indicated by the \"Dx\" (right) and \"Sin\" (left) markers.\n\n**Technical Quality (Hypothetical Assessment):**\n*   **Penetration:** The image appears adequately penetrated, allowing visualization of the thoracic spine behind the heart while maintaining good contrast in the lung fields.\n*   **Inspiration:** The lungs appear reasonably well-inflated, with several posterior ribs visible above the diaphragm.\n*   **Rotation:** The medial ends of the clavicles appear approximately equidistant from the spinous processes, suggesting minimal rotational artifact.\n\n**Visible Anatomical Features (Hypothetical Description):**\n\n1.  **Lungs and Pleura:**\n    *   Both lung fields appear clear and well-aerated, with normal vascular markings extending to the periphery.\n    *   No obvious focal opacities, consolidations, or masses are noted in either lung.\n    *   The pleura appears thin and smooth, with no evidence of pleural effusion or pneumothorax.\n    *   The costophrenic angles (the sharp angles formed by the diaphragm and the chest wall) are clear and acute bilaterally.\n\n2.  **Diaphragm:**\n    *   The right hemidiaphragm is positioned slightly higher than the left, which is a common normal variant.\n    *   Both hemidiaphragms are well-defined and smooth in contour.\n    *   A gastric air bubble is visible inferior to the left hemidiaphragm.\n\n3.  **Heart and Mediastinum:**\n    *   The cardiac silhouette appears to be within normal limits for size and contour, though a precise cardiothoracic ratio cannot be determined without knowing the exact projection (PA vs. AP).\n    *   The mediastinal contours appear unremarkable, with no obvious widening or masses.\n    *   The trachea appears midline and patent.\n    *   The hilar regions (where major blood vessels and bronchi enter the lungs) appear unremarkable, with no obvious enlargement or abnormal calcifications.\n\n4.  **Bones:**\n    *   The visualized ribs, clavicles, and scapulae appear intact, with no obvious acute fractures or significant lytic/blastic lesions.\n    *   The thoracic vertebral bodies are visible through the mediastinum.\n\n5.  **Soft Tissues:**\n    *   The soft tissues of the chest wall appear unremarkable. No distinct breast shadows are prominently seen.\n\n**Overall Impression (Hypothetical):**\nBased on the visible features, this chest radiograph hypothetically demonstrates clear lung fields, normal cardiac and mediastinal contours, and unremarkable osseous structures.','For educational purposes only, here is a hypothetical description of the visible features in this radiology medical image, without providing medical advice:\n\nThis image is a frontal chest radiograph, likely a posterior-anterior (PA) view, indicated by the \"Dx\" (right) and \"Sin\" (left) markers.\n\n**Technical Quality (Hypothetical Assessment):**\n*   **Penetration:** The image appears adequately penetrated, allowing visualization of the thoracic spine behind the heart while maintaining good contrast in the lung fields.\n*   **Inspiration:** The lungs appear reasonably well-inflated, with several posterior ribs visible above the diaphragm.\n*   **Rotation:** The medial ends of the clavicles appear approximately equidistant from the spinous processes, suggesting minimal rotational artifact.\n\n**Visible Anatomical Features (Hypothetical Description):**\n\n1.  **Lungs and Pleura:**\n    *   Both lung fields appear clear and well-aerated, with normal vascular markings extending to the periphery.\n    *   No obvious focal opacities, consolidations, or masses are noted in either lung.\n    *   The pleura appears thin and smooth, with no evidence of pleural effusion or pneumothorax.\n    *   The costophrenic angles (the sharp angles formed by the diaphragm and the chest wall) are clear and acute bilaterally.\n\n2.  **Diaphragm:**\n    *   The right hemidiaphragm is positioned slightly higher than the left, which is a common normal variant.\n    *   Both hemidiaphragms are well-defined and smooth in contour.\n    *   A gastric air bubble is visible inferior to the left hemidiaphragm.\n\n3.  **Heart and Mediastinum:**\n    *   The cardiac silhouette appears to be within normal limits for size and contour, though a precise cardiothoracic ratio cannot be determined without knowing the exact projection (PA vs. AP).\n    *   The mediastinal contours appear unremarkable, with no obvious widening or masses.\n    *   The trachea appears midline and patent.\n    *   The hilar regions (where major blood vessels and bronchi enter the lungs) appear unremarkable, with no obvious enlargement or abnormal calcifications.\n\n4.  **Bones:**\n    *   The visualized ribs, clavicles, and scapulae appear intact, with no obvious acute fractures or significant lytic/blastic lesions.\n    *   The thoracic vertebral bodies are visible through the mediastinum.\n\n5.  **Soft Tissues:**\n    *   The soft tissues of the chest wall appear unremarkable. No distinct breast shadows are prominently seen.\n\n**Overall Impression (Hypothetical):**\nBased on the visible features, this chest radiograph hypothetically demonstrates clear lung fields, normal cardiac and mediastinal contours, and unremarkable osseous structures.',NULL,'{\"mimeType\": \"image/jpeg\", \"estimatedSizeKB\": \"4.17\"}','success','2025-09-29 11:49:13',NULL);
/*!40000 ALTER TABLE `analysis_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_events`
--

DROP TABLE IF EXISTS `analytics_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics_events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `session_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_data` json DEFAULT NULL,
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_events`
--

LOCK TABLES `analytics_events` WRITE;
/*!40000 ALTER TABLE `analytics_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytics_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_stats`
--

DROP TABLE IF EXISTS `country_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_stats` (
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_users` int DEFAULT '0',
  `total_analyses` int DEFAULT '0',
  `premium_users` int DEFAULT '0',
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_stats`
--

LOCK TABLES `country_stats` WRITE;
/*!40000 ALTER TABLE `country_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `country_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledge_base`
--

DROP TABLE IF EXISTS `knowledge_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knowledge_base` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_base`
--

LOCK TABLES `knowledge_base` WRITE;
/*!40000 ALTER TABLE `knowledge_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `parent_comment_id` bigint DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes_count` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_comment_post` (`post_id`),
  KEY `fk_comment_user` (`user_id`),
  KEY `fk_comment_parent` (`parent_comment_id`),
  CONSTRAINT `fk_comment_parent` FOREIGN KEY (`parent_comment_id`) REFERENCES `post_comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_comment_post` FOREIGN KEY (`post_id`) REFERENCES `research_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comments`
--

LOCK TABLES `post_comments` WRITE;
/*!40000 ALTER TABLE `post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research_posts`
--

DROP TABLE IF EXISTS `research_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `research_posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialty` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` json DEFAULT NULL,
  `status` enum('draft','published') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'draft',
  `is_featured` tinyint(1) DEFAULT '0',
  `published_at` datetime DEFAULT NULL,
  `views_count` int DEFAULT '0',
  `likes_count` int DEFAULT '0',
  `comments_count` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_post_user` (`user_id`),
  CONSTRAINT `fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_posts`
--

LOCK TABLES `research_posts` WRITE;
/*!40000 ALTER TABLE `research_posts` DISABLE KEYS */;
INSERT INTO `research_posts` VALUES (1,2,'AI in Cardiac Diagnosis','Exploring AI-driven approaches for early detection of heart diseases using ECG patterns.','A detailed look at how AI improves cardiac diagnostics.','AI Research','Cardiology',NULL,'published',0,NULL,0,0,0,'2025-10-23 01:48:23','2025-10-23 01:48:23'),(2,3,'Radiology Data Annotation Techniques','A guide to streamline medical image labeling for AI training datasets.','Annotation best practices for medical imaging datasets.','Data Science','Radiology',NULL,'published',0,NULL,0,0,0,'2025-10-23 01:48:23','2025-10-23 01:48:23');
/*!40000 ALTER TABLE `research_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('student','doctor','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'student',
  `specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subscription_plan` enum('free','pro') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'free',
  `free_analyses_used` int DEFAULT '0',
  `analysis_count` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `email_verified` tinyint(1) DEFAULT '0',
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'humaizaasghar@gmail.com','$2b$10$cRxtNlyT1dWq2GMmHpzY1e/BliIfIzzUl9OtGQ6SYi6LKlxZmrKIG','Dr. Humaiza Asghar','admin','Dermatology','jiinah',NULL,'pro',0,6,1,1,NULL,NULL,'127.0.0.1','Pakistan','2025-09-28 18:38:56'),(2,'rameshajaved1@gmail.com','$2b$10$w/EZE2cFeaRzQT9EKL8BV.V8Djp.hYOkkY2E8.S5qxp2hNxg1LhSu','Dr. Ramesha Javed','admin',NULL,'jiinah',NULL,'pro',0,1,1,1,NULL,NULL,'127.0.0.1','Pakistan','2025-09-29 01:11:35'),(3,'rameshajaved2425@gmail','$2b$10$gxvLVIK6Gy8DMi72TF6unefd/8Nj.xityA1cQV.SUXXDqfNNhP9fq','Areesha','doctor','Emergency Medicine','jiinah',NULL,'free',0,1,1,0,NULL,NULL,'127.0.0.1','Pakistan','2025-09-29 01:15:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-27  7:40:49
