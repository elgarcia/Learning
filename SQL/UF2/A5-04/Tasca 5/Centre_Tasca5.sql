UPDATE modul SET total_hores=198 WHERE id_modul IN (1) AND id_cicle_formatiu IN ('SMIX');
UPDATE modul SET total_hores=132 WHERE id_modul IN (2) AND id_cicle_formatiu IN ('SMIX');
UPDATE modul SET total_hores=231 WHERE id_modul IN (1) AND id_cicle_formatiu IN ('ASIX');
UPDATE modul SET total_hores=165 WHERE id_modul IN (2) AND id_cicle_formatiu IN ('ASIX');
UPDATE modul SET total_hores=165 WHERE id_modul IN (3) AND id_cicle_formatiu IN ('ASIX');
UPDATE modul SET total_hores=99 WHERE id_modul IN (4) AND id_cicle_formatiu IN ('ASIX');

UPDATE unitat_formativa SET hores_unitat = 25 WHERE id_unitat_formativa IN (1) AND id_modul IN (1) AND id_cicle_formatiu IN ('SMIX');
UPDATE unitat_formativa SET hores_unitat = 28 WHERE id_unitat_formativa IN (2) AND id_modul IN (1) AND id_cicle_formatiu IN ('SMIX');
UPDATE unitat_formativa SET hores_unitat = 28 WHERE id_unitat_formativa IN (3) AND id_modul IN (1) AND id_cicle_formatiu IN ('SMIX');
UPDATE unitat_formativa SET hores_unitat = 33 WHERE id_unitat_formativa IN (1) AND id_modul IN (2) AND id_cicle_formatiu IN ('SMIX');
UPDATE unitat_formativa SET hores_unitat = 33 WHERE id_unitat_formativa IN (2) AND id_modul IN (2) AND id_cicle_formatiu IN ('SMIX');
UPDATE unitat_formativa SET hores_unitat = 60 WHERE id_unitat_formativa IN (1) AND id_modul IN (1) AND id_cicle_formatiu IN ('ASIX');
UPDATE unitat_formativa SET hores_unitat = 80 WHERE id_unitat_formativa IN (2) AND id_modul IN (1) AND id_cicle_formatiu IN ('ASIX');
UPDATE unitat_formativa SET hores_unitat = 33 WHERE id_unitat_formativa IN (1) AND id_modul IN (2) AND id_cicle_formatiu IN ('ASIX');
UPDATE unitat_formativa SET hores_unitat = 66 WHERE id_unitat_formativa IN (2) AND id_modul IN (2) AND id_cicle_formatiu IN ('ASIX');
UPDATE unitat_formativa SET hores_unitat = 85 WHERE id_unitat_formativa IN (1) AND id_modul IN (3) AND id_cicle_formatiu IN ('ASIX');
UPDATE unitat_formativa SET hores_unitat = 45 WHERE id_unitat_formativa IN (1) AND id_modul IN (4) AND id_cicle_formatiu IN ('ASIX');