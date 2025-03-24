<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header">
    <nav class="navbar">
        <!-- Logo và nút toggle -->
        <div class="navbar-left">

            <button class="toggle-btn">
                ☰
            </button>
        </div>

        <!-- Nút fullscreen -->
        <div class="navbar-center">
            <button id="btnFullscreen" class="fullscreen-btn">
                ⛶
            </button>
        </div>

        <!-- Thông tin người dùng -->
        <div class="navbar-right">
            <div class="user-profile">

                <div class="dropdown">
                    <a href="/logout" class="logout-btn">Logout</a>
                </div>
            </div>
        </div>
    </nav>
</header>

<style>
    /* Định dạng chung cho header */
    .header {
        background-color: #f8f8f8;
        padding: 10px 20px;
        border-bottom: 1px solid #ddd;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    /* Logo */
    .logo img {
        height: 40px;
    }

    .logo-mobile {
        display: none;
    }

    /* Nút toggle */
    .toggle-btn {
        background: none;
        border: none;
        font-size: 24px;
        cursor: pointer;
        margin-left: 10px;
    }

    /* Nút fullscreen */
    .fullscreen-btn {
        background: none;
        border: none;
        font-size: 20px;
        cursor: pointer;
    }

    /* Phần người dùng */
    .user-profile {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .user-profile img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        object-fit: cover;
    }

    .logout-btn {
        color: #ff4d4d;
        text-decoration: none;
        font-size: 14px;
        font-weight: bold;
        transition: color 0.2s ease;
    }

    .logout-btn:hover {
        color: #e60000;
    }

    /* Responsive */
    @media (max-width: 768px) {
        .logo-desktop {
            display: none;
        }

        .logo-mobile {
            display: block;
        }
    }
</style>
