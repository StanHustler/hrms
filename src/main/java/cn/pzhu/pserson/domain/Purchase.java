package cn.pzhu.pserson.domain;

public class Purchase {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column purchase.id
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column purchase.name
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column purchase.count
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    private Integer count;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column purchase.money
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    private Integer money;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column purchase.sign
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    private String sign;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column purchase.time
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    private String time;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column purchase.id
     *
     * @return the value of purchase.id
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column purchase.id
     *
     * @param id the value for purchase.id
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column purchase.name
     *
     * @return the value of purchase.name
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column purchase.name
     *
     * @param name the value for purchase.name
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column purchase.count
     *
     * @return the value of purchase.count
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public Integer getCount() {
        return count;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column purchase.count
     *
     * @param count the value for purchase.count
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public void setCount(Integer count) {
        this.count = count;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column purchase.money
     *
     * @return the value of purchase.money
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public Integer getMoney() {
        return money;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column purchase.money
     *
     * @param money the value for purchase.money
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public void setMoney(Integer money) {
        this.money = money;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column purchase.sign
     *
     * @return the value of purchase.sign
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public String getSign() {
        return sign;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column purchase.sign
     *
     * @param sign the value for purchase.sign
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public void setSign(String sign) {
        this.sign = sign == null ? null : sign.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column purchase.time
     *
     * @return the value of purchase.time
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public String getTime() {
        return time;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column purchase.time
     *
     * @param time the value for purchase.time
     *
     * @mbg.generated Tue Oct 18 20:27:37 CST 2022
     */
    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }
}