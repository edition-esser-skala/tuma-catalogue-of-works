\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato"
    d8 \tuplet 3/2 8 { fis'16 g a } a,8 a' a16( g) g( fis) fis( e) e( d)
    d8 \tuplet 3/2 8 { d16 e fis } d,8 fis' fis16( e) e( d) d( c) c( h)
    h8 \tuplet 3/2 8 { h16 cis d } d,8 d' d16( cis) cis( h) h( a) g( fis)
    e8 g' g8. fis32( e) fis16 d, fis a d8 \tuplet 3/2 8 { fis16 g a }
    a,8 \tuplet 3/2 8 { e'16 fis g } fis8 \tuplet 3/2 8 { fis16 g a } a,8 \tuplet 3/2 8 { e'16 fis g } fis8 a16( fis)
    e8 \tuplet 3/2 8 { cis16 d e } e,8 \tuplet 3/2 8 { h'16 cis d } cis8 \tuplet 3/2 8 { cis16 d e } e,8 \tuplet 3/2 8 { h'16 cis d }
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato"
    d8 \tuplet 3/2 8 { d'16 e fis } cis8 cis fis16( e) e( d) d( cis) cis( h)
    h8 \tuplet 3/2 8 { h16 cis d } a8 d d16( c) c( h) h( a) a( g)
    g8 \tuplet 3/2 8 { g16 a h } fis8 fis fis16( a) a( g) d c h a
    g8 h' h cis! d16 d, fis a d8 \tuplet 3/2 8 { d16 e fis }
    a,8 \tuplet 3/2 8 { cis16 d e } d8 \tuplet 3/2 8 { d16 e fis } a,8 \tuplet 3/2 8 { cis16 d e } d8 d
    cis \tuplet 3/2 8 { a16 h cis } e,8 \tuplet 3/2 8 { gis16 a h } a8 \tuplet 3/2 8 { a16 h cis } e,8 \tuplet 3/2 8 { gis16 a h }
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato" \autoBeamOff
    fis'4^\tutti e r2
    h4 a r2
    h4 a r2
    h8 h h a a8. a16 a8 r
    r2 r8 e' fis fis
    e e r4 r r8 h
  }
}

SopranoLyrics = \lyricmode {
  Ve -- ni,
  ve -- ni,
  ve -- ni,
  ve -- ni, San -- cte Spi -- ri -- tus,
  re -- ple tu --
  o -- rum, "re -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato" \autoBeamOff
    a'4^\tutti a r2
    fis4 fis r2
    g4 fis r2
    e8 e e e fis8. fis16 fis8 r
    r2 r8 a a a
    a a r4 r r8 gis
  }
}

AltoLyrics = \lyricmode {
  Ve -- ni,
  ve -- ni,
  ve -- ni,
  ve -- ni, San -- cte Spi -- ri -- tus,
  re -- ple tu --
  o -- rum, "re -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato" \autoBeamOff
    d4 cis r2
    d4 d r2
    d4 d r2
    d8 d d cis d8. d16 d8 r
    r2 r8 e d d
    cis cis r4 r r8 e
  }
}

TenoreLyrics = \lyricmode {
  Ve -- ni,
  ve -- ni,
  ve -- ni,
  ve -- ni, San -- cte Spi -- ri -- tus,
  re -- ple tu --
  o -- rum, "re -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato" \autoBeamOff
    d'4 a r2
    h4 fis r2
    g4 d r2
    g8 fis e a fis8. e16 d8 r
    r2 r8 cis d fis
    a a, r4 r r8 e'
  }
}

BassoLyrics = \lyricmode {
  Ve -- ni,
  ve -- ni,
  ve -- ni,
  ve -- ni, San -- cte Spi -- ri -- tus,
  re -- ple tu --
  o -- rum, "re -"
}

Organo = {
  \relative c {
    \clef bass
    \key d \major \time 4/4 \tempoMarkup "Allegro moderato"
    d'4-\tutti a r2
    h4 fis r2
    g4 d r2
    g8 fis e a fis8. e16 d8 r
    cis-\solo cis d d cis cis-\tutti d fis
    a4 gis8-\solo gis a a \hA gis e-\tutti
  }
}

BassFigures = \figuremode {
  r1
  r4 <6>2.
  r1
  <6 5>4 <7> <6>2
  q1
  r4 <6>2.
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
