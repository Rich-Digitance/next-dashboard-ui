const Table = ({
  columns,
  renderRow,
  data,
}: {
  columns: { header: string; accessor: string; className?: string }[];
  renderRow: (item: any) => React.ReactNode;
  data: any[];
}) => {
  console.log({ columns, renderRow, data });
  return (
    <div>
      <table className="w-full mt-4">
        <thead>
          <tr className="text-left text-gray-500 text-sm border bg-blue-100">
            {columns.map((col) => (
              <th key={col.accessor} className={col.className || ""}>
                {col.header}
              </th>
            ))}
          </tr>
        </thead>

        <tbody>{data.map((item) => renderRow(item))}</tbody>
      </table>
    </div>
  );
};

export default Table;
