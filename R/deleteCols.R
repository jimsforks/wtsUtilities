#' @title Delete columns in a dataframe or matrix
#' 
#' @description Function to delete columns in a dataframe or matrix
#' 
#' @param tbl - dataframe or matrix from which to delete columns
#' @param cols - names of column to delete
#' @param debug - T/F to print debugging info
#' 
#' @return dataframe or matrix with columns removed
#' 
#'@export
#'
deleteCols<-function(tbl,cols,debug=FALSE){
    tblp<-tbl;
    if (length(cols)>0) {
        #loop through columns to delete and find matches with table names
        nms<-names(tbl);
        if (debug) {
            cat('deleteCols:\ninput table names ',nms,'\n');
            cat('columns to delete: (',paste(cols,collapse=","),')\n');
        }
        res<-nms[!(nms %in% cols)];
        if (debug) cat('Selection: \n',res,'\n');
        # res<-rep(TRUE,length(nms));
        # for (c in 1:length(cols)) {
        #     res<-res&(nms!=cols[c]);
        # }
        # if (debug) cat('Selection: \n',res,'\n');
        #keep columns that don't match names to be deleted
        if (debug) cat('Selected columns to keep = ',res,'\n');
        tblp<-tbl[,res];
        if (debug) cat('output table names: \n',names(tblp),'\nfinished deleteCols');
    }
    return(tblp);
}