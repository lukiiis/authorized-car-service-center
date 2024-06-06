package com.example.modules.reserved_hours;

import com.example.modules.car.Car;
import com.example.modules.car.web.CarDTO;
import com.example.modules.reserved_hours.web.ReservedHoursDTO;
import com.example.shared.CrudService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ReservedHoursService {

    private final ReservedHoursRepository reservedHoursRepository;
    private final ReservedHoursMapper reservedHoursMapper;

    public ReservedHoursDTO create(ReservedHoursDTO reservedHoursDTO) {
        ReservedHours reservedHours = new ReservedHours();
        reservedHoursMapper.toEntity(reservedHoursDTO, reservedHours);
        reservedHours = reservedHoursRepository.save(reservedHours);
        return reservedHoursMapper.toDto(reservedHours);
    }
    public List<ReservedHoursDTO> findReservedHoursForNextWeek(LocalDate fromDate) {
        LocalDate endDate = fromDate.plusDays(6);
        List<ReservedHours> reservedHoursList = reservedHoursRepository.findReservedHoursWithinWeek(fromDate, endDate);
        return reservedHoursList.stream()
                .map(reservedHoursMapper::toDto)
                .collect(Collectors.toList());
    }

}

