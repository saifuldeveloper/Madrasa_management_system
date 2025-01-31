var page = 1;
var is_render = true;
const pageNumbers = (total, max, current) => {
  const half = Math.floor(max / 2);
  let to = max;

  if (current + half >= total) {
    to = total;
  } else if (current > half) {
    to = current + half;
  }

  let from = Math.max(to - max, 0);

  return Array.from({ length: Math.min(total, max) }, (_, i) => i + 1 + from);
};

function PaginationButton(
  totalPages,
  className,
  maxPagesVisible = 10,
  currentPage = 1
) {
  let pages = pageNumbers(totalPages, maxPagesVisible, currentPage);
  let currentPageBtn = null;
  const buttons = new Map();
  const disabled = {
    start: () => pages[0] === 1,
    prev: () => currentPage === 1 || currentPage > totalPages,
    end: () => pages.slice(-1)[0] === totalPages,
    next: () => currentPage >= totalPages,
  };
  const frag = document.createDocumentFragment();
  const paginationButtonContainer = document.createElement("div");
  paginationButtonContainer.className = "pagination-buttons float-right mt-5";

  const createAndSetupButton = (
    label = "",
    cls = "",
    disabled = false,
    handleClick
  ) => {
    const buttonElement = document.createElement("button");
    buttonElement.textContent = label;
    buttonElement.className = `page-btn ${cls}`;
    buttonElement.disabled = disabled;
    buttonElement.addEventListener("click", (e) => {
      handleClick(e);
      this.update();
      paginationButtonContainer.value = currentPage;
      paginationButtonContainer.dispatchEvent(
        new CustomEvent("change", { detail: { currentPageBtn } })
      );
    });

    return buttonElement;
  };

  const onPageButtonClick = (e) =>
    (currentPage = Number(e.currentTarget.textContent));

  const onPageButtonUpdate = (index) => (btn) => {
    btn.textContent = pages[index];

    if (pages[index] === currentPage) {
      currentPageBtn.classList.remove("active");
      btn.classList.add("active");
      currentPageBtn = btn;
      currentPageBtn.focus();
    }
  };

  buttons.set(
    createAndSetupButton(
      "start",
      "start-page",
      disabled.start(),
      () => (currentPage = 1)
    ),
    (btn) => (btn.disabled = disabled.start())
  );

  buttons.set(
    createAndSetupButton(
      "prev",
      "prev-page",
      disabled.prev(),
      () => (currentPage -= 1)
    ),
    (btn) => (btn.disabled = disabled.prev())
  );

  pages.map((pageNumber, index) => {
    const isCurrentPage = currentPage === pageNumber;
    const button = createAndSetupButton(
      pageNumber,
      isCurrentPage ? "active" : "",
      false,
      onPageButtonClick
    );

    if (isCurrentPage) {
      currentPageBtn = button;
    }

    buttons.set(button, onPageButtonUpdate(index));
  });

  buttons.set(
    createAndSetupButton(
      "next",
      "next-page",
      disabled.next(),
      () => (currentPage += 1)
    ),
    (btn) => (btn.disabled = disabled.next())
  );

  buttons.set(
    createAndSetupButton(
      "end",
      "end-page",
      disabled.end(),
      () => (currentPage = totalPages)
    ),
    (btn) => (btn.disabled = disabled.end())
  );

  buttons.forEach((_, btn) => frag.appendChild(btn));
  paginationButtonContainer.appendChild(frag);

  this.render = (container = document.body) => {
    $("." + className).after(paginationButtonContainer);
  };

  this.update = (newPageNumber = currentPage) => {
    currentPage = newPageNumber;
    pages = pageNumbers(totalPages, maxPagesVisible, currentPage);
    buttons.forEach((updateButton, btn) => updateButton(btn));
  };

  this.onChange = (handler) => {
    paginationButtonContainer.addEventListener("change", handler);
  };
}

function table(request, page = 1) {
  let items = request['values'];
  let columns = Object.keys(items.values[0]);

 

  let head = ""; 
    head += "<tr>";
    for (let j = 0; j < columns.length; j++) {
      head += "<th>" + columns[j] + "</th>";
    }
    head += "<th>Action</th>";
    head += "</tr>"; 
  $(request['table_class']).find("thead").html(head);
 
 
 

  if (items.values.length > 0) {
  let list = items.values;
    let html = "";
    html += "<tbody>";
    // list loop 
    list.forEach(function (item) {
      html += "<tr>";
      for (let j = 0; j < columns.length; j++) {
        html += "<td>" + item[columns[j]] + "</td>";
      }
      html += "<td>";
      html += "<a href='" + request['edit_url'] + item[request['primary_key']] + "' class='btn btn-primary btn-sm'>Edit</a>";
      html += "<a href='" + request['delete_url'] + item[request['primary_key']] + "' class='btn btn-danger btn-sm'>Delete</a>";
      html += "</td>";
      html += "</tr>";
    }
    );
 
    html += "</tbody>";
    console.log(html);

    $(request['table_class']).find("thead").after(html);
  }
}
 

    // const paginationButtons = new PaginationButton(
    //   data?.pagination?.total_pages ?? 1,
    //   table_info["table_id"],
    //   10
    // );
    // is_render ? paginationButtons.render() : "";
    // paginationButtons.onChange((e) => {
    //   is_render = false;
    //   $("." + table_info["table_id"])
    //     .find("tbody")
    //     .html("");
    //   table(table_info, e.target.value);
    // });
  // } else if (table_info["fake_data"]?.data?.length === 0) {
  //   console.log(table_info["fake_data"]);
  // } else {
  //   $("." + table_info["table_id"]).children().after(`<tbody>
  //                                                                       <tr class="odd">
  //                                                                         <td valign="top" colspan="${table_info["column"].length}" class="dataTables_empty">
  //                                                                             <div class="no-data-found-wrapper text-center ">
  //                                                                               <img src="$baseUrl}/public/images/no_data.svg" alt="" class="mb-primary">
  //                                                                               <p class="mb-0 text-center">Nothing to show
  //                                                                                   here</p>
  //                                                                               <p class="mb-0 text-center text-secondary font-size-90">
  //                                                                                   Please add a new entity or manage the
  //                                                                                   data table to see the content here</p>
  //                                                                               <p class="mb-0 text-center text-secondary font-size-90">
  //                                                                                   Thank you
  //                                                                               </p>
  //                                                                             </div>
  //                                                                         </td>
  //                                                                       </tr>
  //                                                                   </tbody>`);
  // }
// }
