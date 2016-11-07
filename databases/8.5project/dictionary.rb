require 'rubygems'
require 'sqlite3'

DBNAME = "Dictionary_info.sqlite"

DB = SQLite3::Database.new( DBNAME )