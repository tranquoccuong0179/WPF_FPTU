using Candidate_BusinessObjects;
using Candidate_Service;
using System;
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
using System.Windows.Shapes;

namespace Candidate_GUI_WPF
{
    /// <summary>
    /// Interaction logic for JobPostingWindow.xaml
    /// </summary>
    public partial class JobPostingWindow : Window
    {
        private int? roleId = 0;
        private IJobPostingService _jobPostingService;
        public JobPostingWindow()
        {
            InitializeComponent();
            _jobPostingService = new JobPostingService();
        }

        private void btnSignOut_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Do you want to quit window?", "Quit", MessageBoxButton.YesNo, MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes)
            {
                this.Close();
            }
        }

        private void dtgJobPosting_Loaded(object sender, RoutedEventArgs e)
        {
            dgJobPostings.ItemsSource = _jobPostingService.GetJobPostings();
        }

        private void LoadData()
        {
            this.dgJobPostings.ItemsSource = null;
            this.dgJobPostings.ItemsSource = _jobPostingService.GetJobPostings().Select(x => new
            {
                x.PostingId,
                x.Description,
                x.PostedDate,
                x.JobPostingTitle,
            });
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            JobPosting job = new JobPosting();
            job.PostingId = txtPostingID.Text;
            job.JobPostingTitle = txtTitle.Text;
            job.Description = txtDescription.Text;
            job.PostedDate = DateTime.Parse(dpPostingDate.Text);

            if (_jobPostingService.AddJobPosting(job))
            {
                this.LoadData();
                this.ResetForm();
                MessageBox.Show("Add Successful!", "Add", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Wrong", "Add", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void ResetForm()
        {
            txtPostingID.Text = string.Empty;
            txtTitle.Text = string.Empty;
            txtDescription.Text = string.Empty;
            dpPostingDate.Text = string.Empty;
        }

        

        private void dtgJobPosting_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataGrid dg = sender as DataGrid;
            DataGridRow row = (DataGridRow)dg.ItemContainerGenerator.ContainerFromIndex(dg.SelectedIndex);
            if (row != null)
            {
                DataGridCell rowColumn = dg.Columns[0].GetCellContent(row).Parent as DataGridCell;
                string id = ((TextBlock)rowColumn.Content).Text;
                JobPosting jobPosting = _jobPostingService.GetJobPosting(id);
                if (jobPosting != null)
                {
                    txtPostingID.Text = jobPosting.PostingId;
                    txtTitle.Text = jobPosting.JobPostingTitle;
                    txtDescription.Text = jobPosting.Description;
                    dpPostingDate.Text = jobPosting.PostedDate.ToString();
                }
            }
        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            JobPosting job = _jobPostingService.GetJobPosting(txtPostingID.Text);
            if (job != null)
            {
                job.Description = txtDescription.Text;
                job.JobPostingTitle = txtTitle.Text;
                job.PostedDate = DateTime.Parse(dpPostingDate.Text);
                if (_jobPostingService.UpdateJobPosting(job))
                {
                    this.LoadData();
                    this.ResetForm();
                    MessageBox.Show("Update Successful!", "Update", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    MessageBox.Show("Wrong", "Update", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
            else
            {
                MessageBox.Show("Something wrong, please select or check again Job Posting for you want to update", "Update", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Do you want to delete this Job Posting?", "Delete", MessageBoxButton.YesNo, MessageBoxImage.Warning);
            if (result == MessageBoxResult.Yes)
            {
                JobPosting job = _jobPostingService.GetJobPosting(txtPostingID.Text);
                if (job != null)
                {
                    if (_jobPostingService.DeleteJobPosting(job))
                    {
                        this.LoadData();
                        this.ResetForm();
                        MessageBox.Show("Delete Successful!", "Delete", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Wrong", "Delete", MessageBoxButton.OK, MessageBoxImage.Warning);
                    }
                }
                else
                {
                    MessageBox.Show("Something wrong, please select or check again Job Posting for you want to delete!", "Delete", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
        }


        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void btnCandidateProfile_Click(object sender, RoutedEventArgs e)
        {
            CandidateProfileWindow candidateProfileWindow = new CandidateProfileWindow();
            candidateProfileWindow.Show();
            this.Close();
        }
    }
           
}
