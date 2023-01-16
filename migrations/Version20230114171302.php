<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230114171302 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE plane ADD max_speed INT DEFAULT NULL, ADD cruising_speed INT DEFAULT NULL, ADD engine VARCHAR(255) DEFAULT NULL, ADD max_elevation INT DEFAULT NULL, ADD empty_weight INT DEFAULT NULL, ADD max_weight INT DEFAULT NULL, ADD range_of_action INT DEFAULT NULL, ADD fuel_capacity INT DEFAULT NULL, ADD length INT DEFAULT NULL, ADD wingspan INT DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE plane DROP max_speed, DROP cruising_speed, DROP engine, DROP max_elevation, DROP empty_weight, DROP max_weight, DROP range_of_action, DROP fuel_capacity, DROP length, DROP wingspan');
    }
}
