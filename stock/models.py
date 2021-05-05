# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
import uuid


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class CiSessions(models.Model):
    id = models.CharField(primary_key=True, max_length=128)
    ip_address = models.CharField(max_length=45)
    timestamp = models.PositiveIntegerField()
    data = models.TextField()

    class Meta:
        managed = False
        db_table = 'ci_sessions'
        unique_together = (('id', 'ip_address'),)


class ClientAreas(models.Model):
    id = models.CharField(primary_key=True, max_length=50)
    # area = models.ForeignKey("Clients",on_delete=models.SET_NULL,blank=True,null=True) 
    # id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    area_name = models.CharField(max_length=54, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    updated_by = models.CharField(max_length=10, blank=True, null=True)
    date_created = models.CharField(max_length=10, blank=True, null=True)
    date_deleted = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'client_areas'

    # def __str__(self):
    #     return self.id

class Clients(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    # id = models.CharField(primary_key=True, max_length=50)
    # area = models.ForeignKey("ClientAreas",on_delete=models.SET_NULL,blank=True,null=True) 
    client_name = models.CharField(max_length=255, blank=True, null=True)
    client_area = models.CharField(max_length=50, blank=True, null=True)
    latitude = models.CharField(max_length=100, blank=True, null=True)
    longitude = models.CharField(max_length=100, blank=True, null=True)
    allocated_bags = models.IntegerField(blank=True, null=True)
    bag_type = models.CharField(max_length=10, blank=True, null=True)
    extra_bags = models.IntegerField(blank=True, null=True)
    status = models.IntegerField()
    created_by = models.CharField(max_length=255, blank=True, null=True)
    updated_by = models.CharField(max_length=255, blank=True, null=True)
    date_created = models.DateTimeField(blank=True, null=True)
    date_deleted = models.DateTimeField(blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'clients'

    # def __str__(self):
    #     return self.id

class Deliveries(models.Model):
    id = models.CharField(primary_key=True, max_length=50)
    # my_client = models.ForeignKey(Clients, on_delete=models.CASCADE, blank=False)
    client_area = models.CharField(max_length=255, blank=True, null=True)
    client = models.CharField(max_length=50, blank=True, null=True)
    bags_issued = models.IntegerField(blank=True, null=True)
    bags_size = models.CharField(max_length=10, blank=True, null=True)
    occupied_units = models.IntegerField(blank=True, null=True)
    total_bags_issued = models.IntegerField(blank=True, null=True)
    created_by = models.CharField(max_length=255, blank=True, null=True)
    updated_by = models.CharField(max_length=255, blank=True, null=True)
    date_created = models.DateTimeField(blank=True, null=True)
    date_deleted = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'deliveries'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        # managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class FileUpload(models.Model):
    id = models.BigAutoField(primary_key=True)
    file_name = models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()

    class Meta:
        # managed = False
        db_table = 'file_upload'


class Roles(models.Model):
    id = models.IntegerField(primary_key=True)
    role_name = models.CharField(max_length=50, blank=True, null=True)
    role_description = models.CharField(max_length=50, blank=True, null=True)
    status = models.IntegerField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        # managed = False
        db_table = 'roles'


class Users(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.TextField()
    role = models.ForeignKey(Roles, models.DO_NOTHING, blank=True, null=True)
    mobile = models.CharField(max_length=50)
    email = models.CharField(max_length=100)
    password = models.CharField(max_length=255)
    status = models.IntegerField(blank=True, null=True)
    firstname = models.CharField(max_length=100, blank=True, null=True)
    lastname = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'users'

class Mine(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.TextField()
   
    class Meta:
        # managed = False
        db_table = 'mine'
