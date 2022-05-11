﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static elj.appdata.DBapp;

namespace elj.frames
{
    /// <summary>
    /// Логика взаимодействия для PageRasp.xaml
    /// </summary>
    public partial class PageRasp : Page
    {
        public PageRasp()
        {
            InitializeComponent();
        }

        private void Update()
        {
            var datasourse = context.RaspGrEK32.ToList();
            var rasp = datasourse;
            
            listRasp.ItemsSource = datasourse;
           
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Update();
        }
    }
}
